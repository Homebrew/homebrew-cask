cask "thunderbird@daily" do
  version "149.0a1,2026-02-01-10-05-58"

  language "cs" do
    sha256 "c14c753df080476555ce8879872a369aac4db4aac1bc9d4bd4c860a376daef55"
    "cs"
  end
  language "de" do
    sha256 "43b769dc656b1b61e9267a609e3a2322dc525226e2224fa617bf45c3290196ac"
    "de"
  end
  language "en-GB" do
    sha256 "5a590e922c5d743b19b0bd8799d62dca6b6725518e96227b4ea4031378b8ef82"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e7dc1ae97ca885d654ec156e0998430e87bd4170a50581f0ce0a367ab249dcfe"
    "en-US"
  end
  language "fr" do
    sha256 "55d188449447e658d25c3ee1b171a7726f4f9ea25d7bb5daed4119dc093a6889"
    "fr"
  end
  language "gl" do
    sha256 "e494980b969ff44f2da67ab402b7055f0878a5debf770b852123ccbcdc78e18a"
    "gl"
  end
  language "it" do
    sha256 "65c6e83156d76e878ee639dfd7ee524717ddeabfa6bbc0586cfb82abdcf1b808"
    "it"
  end
  language "ja" do
    sha256 "8806d18e1b1f820db1cf3b153fcfc0385de69dfcb33933b04de3efa5e880246b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cf0170d21733db484531f87acb82a5312f02a22e5d39cb7993e3ce4440d308c4"
    "nl"
  end
  language "pl" do
    sha256 "0abb8523c2c3054b1266b44bfa9bb91f1ddce12cb98bb7c2fac225daa0e611b3"
    "pl"
  end
  language "pt" do
    sha256 "37f38b3bbda5d112ef7f881c21187a067f2c75d309bd6dcbc5a080a7ea9e3666"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "af33524c97bb925043de4ec2d68f1ad723f48b078a5165e4a3037bb6dc0631bd"
    "pt-BR"
  end
  language "ru" do
    sha256 "c2657dc2f70175ddb2f10e3b4a9cfa1e01bfdd150b0188f19cd0f8decbf71d47"
    "ru"
  end
  language "uk" do
    sha256 "522700548445d058bb29fcf88fdbf43b4a143135d1f40d277225e33e58ea6018"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a9723a17f60e954fbbcfbd3727834cf08819adbdb64d6c1e9f4ff016b560795"
    "zh-TW"
  end
  language "zh" do
    sha256 "fde496461aeb34194e915a786a357a09b07a33fcfb2f6531dccba6893ba81f0f"
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
