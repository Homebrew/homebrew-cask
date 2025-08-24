cask "thunderbird@daily" do
  version "144.0a1,2025-08-24-06-52-31"

  language "cs" do
    sha256 "13661d7a5eef333dd447224ce1df7b6777434def4cb2de495ddeb30e71394eb1"
    "cs"
  end
  language "de" do
    sha256 "08784bd9910007e746d7a05737bcf9e11b48d3e7bf1bef05e40032e0594bc54a"
    "de"
  end
  language "en-GB" do
    sha256 "ad34264f42725eca69320ee45f4e249ce5f2de283b77e12d456fcd7422d9c8b3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e70be727ce499286363d0bdf72df90a10f0d46524d0ede1af5e7c9b70db49bc3"
    "en-US"
  end
  language "fr" do
    sha256 "ddd786bc17989c9fe7aab2add79e326caba4f046d21894b829cdc2319b605f70"
    "fr"
  end
  language "gl" do
    sha256 "5ac34134ac550a8a87412f3c5639a04ae6463039cc46b38c0468c604a9eb4547"
    "gl"
  end
  language "it" do
    sha256 "52c55dac3e3f657301a0dec343563d6a64394592c5bd098d840ccf10994bd9e5"
    "it"
  end
  language "ja" do
    sha256 "7df6e33fbdd11565cf94bdc5b144b72a793ecd52f281c9884b00b2704675756d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "254f78c16d4406804fd9ca179bab993aefa64ae92f240fb2d1dcfd92d7d2d4c2"
    "nl"
  end
  language "pl" do
    sha256 "0969687de5a261436aa3bb0e2dada8b27fb32b4b0ee89cedd3713cf78763b757"
    "pl"
  end
  language "pt" do
    sha256 "78548f4926ad07abc78e2d3a479e33fdb4b781fc474b2e5e8347956849980eee"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4eef9ba449e287fbb3874f5005988403d732ab9870cca0e26f72ec9d5d28225b"
    "pt-BR"
  end
  language "ru" do
    sha256 "2143c49f4074f09f9c22ede03f6b1c08015683735f843652928120d84bc55e39"
    "ru"
  end
  language "uk" do
    sha256 "e323bfbf078f39bf364b9006f95ab957929ed4b9a8439c8ff13fdb311a83295a"
    "uk"
  end
  language "zh-TW" do
    sha256 "c3468a641c72bf68e147bb6df17051275373f90245a78724338d0f32b8c2f599"
    "zh-TW"
  end
  language "zh" do
    sha256 "d54388e3e48f65f7c59ae1cf9fce2c074c46a84fa0196a1c4416c101d2318bfd"
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
  depends_on macos: ">= :catalina"

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
