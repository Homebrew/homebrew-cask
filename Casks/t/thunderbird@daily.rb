cask "thunderbird@daily" do
  version "159.0a1,2026-10-04-08-16-39"

  language "cs" do
    sha256 "727d35110e0f6ee23aab770f6df33f78a7e0390eac1ba7ae437923bc564163a0"
    "cs"
  end
  language "de" do
    sha256 "a94775e05639f8782ce7488eca4e371b75a6cdc5e34e01fa340227ade0975695"
    "de"
  end
  language "en-GB" do
    sha256 "c3b8a41324a33931f99c18225a3524246d926e5a69cd48128d672437c72aea6b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "96e941b2131753152df02466b45e567ec61940cd69c9921da1887566363f8fc0"
    "en-US"
  end
  language "fr" do
    sha256 "3c57c52eaf2af62d49399627b03840059ca01e99f73dcb5c654f3fe9d173109e"
    "fr"
  end
  language "gl" do
    sha256 "ba66354450093aa93dc7688fee2956fc7c74b51484f5aac0496b9815e6862593"
    "gl"
  end
  language "it" do
    sha256 "3c932a3fc94a9fb9757d08dc442b7ca31201199e4a70cd304525608d1656560b"
    "it"
  end
  language "ja" do
    sha256 "e7e77749a49e4d3c7a5ded2c27367abe270e202a48bb0a45af48a56ed903e4ff"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c8070783f9faa721864a621830840c4481de5339b11bc0f5353a8addcf6e82af"
    "nl"
  end
  language "pl" do
    sha256 "279f6bb799f4ad5b6ab0ff5cdc6aeff4f81bc4bd07c10ccbbdbc08c9f64418fa"
    "pl"
  end
  language "pt" do
    sha256 "ef962951e62a8c417666780a0461b95fe414d72fb923fa217e9c2d7458fbc6be"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "067d4946b79b502682a5b52c43392bb549a4e00721aef27c54fcb0dbcd4136aa"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b3031de265c01213730aa327f947ce3413c40e9e34325152f2b35af12bd1f79"
    "ru"
  end
  language "uk" do
    sha256 "18cd8c839329281f10cf53f7a3e40992c3eef864751b9458ad7d545d6a4199c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "935dcc60e06bdd18858fcbde4886cba889a6760f74056f06790528f27d0891bb"
    "zh-TW"
  end
  language "zh" do
    sha256 "d727857415d660ef1de991848ac9291dda3391f4410f7b61ebb81685998e35f9"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
  depends_on :macos

  app "Thunderbird Daily.app"

  uninstall quit: "org.mozilla.thunderbird-daily"

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
