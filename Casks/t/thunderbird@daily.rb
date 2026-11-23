cask "thunderbird@daily" do
  version "163.0a1,2026-11-23-09-18-59"

  language "cs" do
    sha256 "69191640905a01df0169b0d39d60347995254c60052472a8b1c511f596331c19"
    "cs"
  end
  language "de" do
    sha256 "4881bb6e70faaa495a9979daafd48c2fcf8714bd4a26da53c19c417d463d89aa"
    "de"
  end
  language "en-GB" do
    sha256 "2eedf1dae6a77ed5765247fad3e44285d68c30c6f6ee10d8a8ed53ed99cc8896"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4af175918a3c852645ac9b06c3cb26317d585f6309d5d84f0d536e1649c03fbe"
    "en-US"
  end
  language "fr" do
    sha256 "693413867739cee2a515bb5a7af4e3d4c640ae9a8635838e1b548b7a155397cf"
    "fr"
  end
  language "gl" do
    sha256 "a72fc46b93d043150533fdad50dc71ec2acc45e5b906785a3e4fe18799b28656"
    "gl"
  end
  language "it" do
    sha256 "f07f3721e6ee3163652ffacc4686f07a2d90eeac0a59bdc2013a27049095017b"
    "it"
  end
  language "ja" do
    sha256 "f8c1ac8351507cfe86b9771b9a15f6684752dcc509db541c838f7f971068470d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d65d70bb9ac453c76a20e9d33e562a569a63e480b03c4526d77ca0db381d4e21"
    "nl"
  end
  language "pl" do
    sha256 "e0b3a9f127934de1dd4432e68b36ef111abb523317d52222552d82b19d3b8cc5"
    "pl"
  end
  language "pt" do
    sha256 "38065434bb6e46a0ac9f424d54d840c524664b6c05c3071833bc4ce0e882a062"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fa0d2208a8531cc04d3fc80f68296dbc81a5df0243caf8fab568956a7279d90a"
    "pt-BR"
  end
  language "ru" do
    sha256 "5abb0af8033c309130f2c66366e63cdc9a7870e11766336bdfd8cae882a3c222"
    "ru"
  end
  language "uk" do
    sha256 "4b83708890b097420f04ce2791a41333f8d43eaadc2da09234da802b25741b3e"
    "uk"
  end
  language "zh-TW" do
    sha256 "a739b7ad1c4617807d372d9122881f8730f06d2b23f0c53c6b992cdcd2cbd87a"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f55f6e1020e6a11f832baa7cba94281564849de0df0989da26559459c4e26d3"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{year}/#{month}/#{version.csv.second}-comm-central#{locale_suffix}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
