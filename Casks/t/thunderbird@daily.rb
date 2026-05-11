cask "thunderbird@daily" do
  version "152.0a1,2026-05-11-09-19-52"

  language "cs" do
    sha256 "9b420d5af6351a263c2818fcebb785647402d235902edc379d78ed218e2a2c77"
    "cs"
  end
  language "de" do
    sha256 "5c7ab7668d588fd70d8bd080083dd7e7330ae6914c26cc84515da42603c1bacb"
    "de"
  end
  language "en-GB" do
    sha256 "18493b2494efd5b5cab18b690199665a0c4b844f95c01f8433d15bcb65729e56"
    "en-GB"
  end
  language "en", default: true do
    sha256 "74c8ac1e0959455b8f2b34183cec83651c0c5ffa5b74e13351b47ee8549cc024"
    "en-US"
  end
  language "fr" do
    sha256 "5da66bfcc30087b941f4daf5e2575c7bd4d063e7c9f8622c564ca8f477de8eae"
    "fr"
  end
  language "gl" do
    sha256 "93db5ea6ec8cc2679a31cc498a0f0d560f7370882261a7199ad77e0caba697ef"
    "gl"
  end
  language "it" do
    sha256 "72fbfce1803b10ed261a669431728533c38d4db1c875166f2e42ec3211fa72ec"
    "it"
  end
  language "ja" do
    sha256 "29d990dd086bc08c3e07703d6656a796df58c468b7f45125c8278c560b915b20"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f963578bb1f1047ba1b614d9d45337850af45cd04ba08b386d6d63ba3564f902"
    "nl"
  end
  language "pl" do
    sha256 "1a19fcc2778b13835f53977e861fc246c5c6d9fb0f68b6f402edee1d84adc22e"
    "pl"
  end
  language "pt" do
    sha256 "9fe0c9ebed2193af34e625685a41eded47b3d3e28326f2bdde92c3a3840840ab"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ee3b962a8652b58f0b45d3e40459b3a9c04ead28df85b6e0ce5fbf897cfd73ec"
    "pt-BR"
  end
  language "ru" do
    sha256 "43a8205132b8e351ede39fbc8c49f30550f63badfb109ddea165ac8aae70353a"
    "ru"
  end
  language "uk" do
    sha256 "5b5462ec50f67eea48f1dc49074511ff4dbe91d94e9db5e7570f12f7528465cd"
    "uk"
  end
  language "zh-TW" do
    sha256 "fd56d616ee061c26a89862e6b5906f2ce8cadd616fffa17ac4b5546196cb4602"
    "zh-TW"
  end
  language "zh" do
    sha256 "67083c0f03b90bdbbc09461397fc6b8431a6ae00c09259b6661149512648ffab"
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
  depends_on :macos

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
