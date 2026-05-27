cask "thunderbird@daily" do
  version "153.0a1,2026-05-27-09-40-16"

  language "cs" do
    sha256 "ab09c75554b6f1d5cc277bf64a13eb009be5d92ebfd0659ce58bba4d81678528"
    "cs"
  end
  language "de" do
    sha256 "afa9e141cb5c00cb7b3ddf9b17a8e7432510b7ae759cf1761a41a075c2a3a881"
    "de"
  end
  language "en-GB" do
    sha256 "a31e6129a6497601642811ca84ae19cb0c5890f60f702480a552d0b8ea687667"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7332db5fa9f8eca109718793315579887b6d201d04d3308fc9e101247def36e1"
    "en-US"
  end
  language "fr" do
    sha256 "856282fbba6861f21fcae858fe18c51dcaf5a790491a9cbbb694631b7d2f1c39"
    "fr"
  end
  language "gl" do
    sha256 "0e5f0fddc181385027fe2494d898d692c2daebb3e590772aa04fb09bfe0bae6b"
    "gl"
  end
  language "it" do
    sha256 "a604cbe4bd384a8ff5503d03462c8ca67132f5c517c9a3d1945300d3566e3058"
    "it"
  end
  language "ja" do
    sha256 "4ee1a712e4712ee14eac66ae2c15e1c1e0deb9524d12ba10a6edd269ecbcd432"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dc2e3add000755da74079e8c88ec8ae66b80786ac09d5279c56e3522bed03a09"
    "nl"
  end
  language "pl" do
    sha256 "c3e917dcaa752289aab3ae86e775fd1a84ef1e3b2f07b5ecd13774bce20b71bc"
    "pl"
  end
  language "pt" do
    sha256 "5abb033cb12f300bbf0e28a3e9149f723acaec3f887052c02a38398840bdf094"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "beef5db25b6fe801102cb49a575c255b1c814e080b743caaa5e12dbfa2fe68c6"
    "pt-BR"
  end
  language "ru" do
    sha256 "f736a226f00891f04aa5842ff88a190b7c3b7d329b5c08393c1dedae7538a330"
    "ru"
  end
  language "uk" do
    sha256 "4386653071648b3ee05b8c430518663db4f81b5f0625c424906192c7438adb03"
    "uk"
  end
  language "zh-TW" do
    sha256 "372d3c04b6fa5e4269f89d0a1794b59e4de76b09709d2bd621e990ccc2ddbd9f"
    "zh-TW"
  end
  language "zh" do
    sha256 "d4649c545cdc7c7539dd95cb15c59915dd86a5d535804a7c7ad277f4878b9c57"
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
