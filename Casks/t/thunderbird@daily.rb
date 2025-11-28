cask "thunderbird@daily" do
  version "147.0a1,2025-11-28-10-50-49"

  language "cs" do
    sha256 "b7d9f912a6c50ad462c0bc51e1723f15d5089301b134212019badea8fe32f401"
    "cs"
  end
  language "de" do
    sha256 "8db6e61ef860a84d23f6a61a602cc22f3e3eaee7423cc3a103513cfd18d282d2"
    "de"
  end
  language "en-GB" do
    sha256 "5367b6a8aeb348525b2533203247c8a798c86cdda84e6cd642adeea9313045bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "be8bd2232ab145b09acc52918da978c8f063d3b1c582b4a00d1b14837b37de50"
    "en-US"
  end
  language "fr" do
    sha256 "24aac7978d8748bcf005c327125b3d237215a36903bfd10fe9b8179ea8b5d776"
    "fr"
  end
  language "gl" do
    sha256 "dbd4713e8887dfcaac1f8079a63fd009dd495d70ebbbf7d12fb2bdb921c65684"
    "gl"
  end
  language "it" do
    sha256 "59db95a19281915693f9dd5995d64d37d9b8fc8df8bb09ed6f33cb2be20aae35"
    "it"
  end
  language "ja" do
    sha256 "70330d9afbcb27797b7897db503cabfab1288f99182ba565728f026351fdeb4c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a821beaf2e9dc8745635ee37d770e3f1f87b986e7c3b7e20e950c7aeab15e646"
    "nl"
  end
  language "pl" do
    sha256 "40e460bc8bd2b5ce404e3d9345d3cb8f5d7c0935ae3c8b19b50a460063d2f9d9"
    "pl"
  end
  language "pt" do
    sha256 "66731f9b90535553e63f2e02c0f316e483b6b8c9816be47e89e479824c71697a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1d86248ee95ce530b4db32cd5e6d33e2127bf95d19f1c6d8f8132bc1d68d86eb"
    "pt-BR"
  end
  language "ru" do
    sha256 "bbb022953328b32db88e8a85522e501e76e24f66d3681531a87f8ee7a2a9187a"
    "ru"
  end
  language "uk" do
    sha256 "6581ee74aee5b1b9cb31f74ed00a1a5a2a4454af4781b71df7d99c04f74efe4b"
    "uk"
  end
  language "zh-TW" do
    sha256 "cfb954f5880454035344bd4e13919ed62293c9979659ab53a0fa6e5391a4d92a"
    "zh-TW"
  end
  language "zh" do
    sha256 "44b5529ca7d686b580764d167f72d17d404b6725c5eab79c053b01f7c4f18678"
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
