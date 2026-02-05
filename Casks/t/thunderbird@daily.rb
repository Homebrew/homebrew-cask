cask "thunderbird@daily" do
  version "149.0a1,2026-02-05-09-32-57"

  language "cs" do
    sha256 "cf4a32adbe36c95a6f7bd5365a996cb4eedb74aabef5b68cce6dbee7d1d42332"
    "cs"
  end
  language "de" do
    sha256 "4b905d1af2a1ecbdb85c0b495f30be8f5db08ab2d318b82303da2333826c2a3e"
    "de"
  end
  language "en-GB" do
    sha256 "b689b097a4a94f4dca81f98621f8a87a4fed9eadc1e9e58f9c293fa482a6ac0f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "08c26e6330218f575a1eaa26feb87c9e2b41ee1d6f309a8fcebcbe2ebec3bb6d"
    "en-US"
  end
  language "fr" do
    sha256 "559167da53998483d14a103e218a7adb3e70256026bcc547f02161076e84a84b"
    "fr"
  end
  language "gl" do
    sha256 "55dffe95c5d550fe522df17b9de267f99f2ecc1d8ce48d3ad06f037975c46a1c"
    "gl"
  end
  language "it" do
    sha256 "deec6e6a1e94549d1b67a910a640f9c9f3f4f61d11a9cb69e8017ef40497501d"
    "it"
  end
  language "ja" do
    sha256 "4165df0187c3f9a93c6152f30b962a54208a2e045f1493b6b7fdbb3863e2e1c3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d7e81baa18c0d5ac6c96687544800b5e818a2bdee2c35f206200e22a52d0f5be"
    "nl"
  end
  language "pl" do
    sha256 "527380cccf755b37c04ca088710d19bffd8ccf333ecfcbb49cd21d1a79e4d351"
    "pl"
  end
  language "pt" do
    sha256 "690cf5253f36a1cd990639246a416aed08b4536dc0c47e316a8592dd17f00cfc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4d9c6fdb771dd44002afeb2ccaf3d5d864663473ea0af8f8ba622e026b894363"
    "pt-BR"
  end
  language "ru" do
    sha256 "ceb9e12b3138daba68bbbdbea0d038ff0aa970122de881498e7375edb7b6e0ab"
    "ru"
  end
  language "uk" do
    sha256 "71d94335a39e1e50ceeb1c430d8e2bdc8a552339e9f0129f791feff038432397"
    "uk"
  end
  language "zh-TW" do
    sha256 "4c719cad67391db556d9c48dc4673a6d859f1575bc54e7fa4db1d3ac7ad654da"
    "zh-TW"
  end
  language "zh" do
    sha256 "4ddb096d1657dd6b09d06f0dd1daa1496c6db18ab3c64dc816eca62429bad86c"
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
