cask "thunderbird@daily" do
  version "147.0a1,2025-11-21-09-50-45"

  language "cs" do
    sha256 "f2df23cd98b42d3c04828bc739401158439b4452e302bd313ab382b521734501"
    "cs"
  end
  language "de" do
    sha256 "b58f3314422b415d5c1970af87cede709085df7afb0bb88e8df2aca4204d858f"
    "de"
  end
  language "en-GB" do
    sha256 "a80b2f22c5f06be899905dab82d1ef1b8964f9b52aba7c7b88f6b135e9c22597"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71a3820128db935b181de473ca3f4afb5ba0620c482f210cde7a031443ac2c4e"
    "en-US"
  end
  language "fr" do
    sha256 "248106635ea058b4725d016fd5493ed8f26a587a9de9498973a83f91c2335380"
    "fr"
  end
  language "gl" do
    sha256 "3a22ff28d43d5356b78d31d7789ceba6d5bbf83f2b488526edc320037ae747cc"
    "gl"
  end
  language "it" do
    sha256 "87fe5e5784376547241d67942aca59adda11d6727746d233760bf497b82983c4"
    "it"
  end
  language "ja" do
    sha256 "8152baf6f1793e9fff2b86aaa7f277d1d475ff38455c39dd55a2aa2f68276f63"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "01fa9168c858a06e5e9e4077a0418da80703cf4257ec6fa3b15e4a785f3f2247"
    "nl"
  end
  language "pl" do
    sha256 "228a500a459d4bf8c9c9dd31bf5389e835c6115a8c88e0fd802e7b35bebb3aff"
    "pl"
  end
  language "pt" do
    sha256 "b6fce374bde58533081d7e926b3dbdece84e5bed42ba3efb80eada5c0629bf2e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2e5b5d1a97ad3c34aa86b3be7ea152aa860444ebf15303f6b156ccd11b8b1365"
    "pt-BR"
  end
  language "ru" do
    sha256 "b65c9ae9371f22a3a13ea05c85f9c126d130bb585189f854a4b601c0e2771f9e"
    "ru"
  end
  language "uk" do
    sha256 "34d8e32ddbbd51be6ebb09b31153ed7a001e7eadee197c8df9027f29a13b620f"
    "uk"
  end
  language "zh-TW" do
    sha256 "fb5d94b69a3da91227d1975e9f4cf73d9366fcd3f1f756b16f6be76f3c89346a"
    "zh-TW"
  end
  language "zh" do
    sha256 "ec69c79fe653359383a1a5ab93fb3d8d7f6dbb807cc515a71678a16784e56cec"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Thunderbird Daily.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
