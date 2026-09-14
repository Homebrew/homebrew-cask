cask "thunderbird@daily" do
  version "158.0a1,2026-09-14-10-37-55"

  language "cs" do
    sha256 "70d7c442b9ac3bfe77530144c69109c66c202d6b92ed89b13f3ff2304fd66277"
    "cs"
  end
  language "de" do
    sha256 "aa274fde173fcc51fe1e18580e54a4589ec0f2af286c2c679fbacc8d681b0554"
    "de"
  end
  language "en-GB" do
    sha256 "7c7ab87f383cf986c660a52a81874eb5db0eeb3d5e31eb2695afa1f256847938"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c3be708d863a678fcaca3e3a4c9eda6b7a152babffdca1ba632974e03bb8c30b"
    "en-US"
  end
  language "fr" do
    sha256 "279a53d7aecc810dc77fabae38ab9240819b9d5a85c12b0cda2f1b23e71bb4de"
    "fr"
  end
  language "gl" do
    sha256 "4b596da72c173c39fecd8078e42d762cc059d1af37d6cd8ea18d07aee67b430f"
    "gl"
  end
  language "it" do
    sha256 "615ceefe33c217517a02d54d1b01ab5dc92e9cf5c8bf74df5fc7c39e61961722"
    "it"
  end
  language "ja" do
    sha256 "6e941416c71abd52a6ff6c6e06f4338cd4c12d9d4993123033ba908082b99740"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4bea2eb68614b07cfccd780381f0b449226c26994666cc618d63ac3f18280f3f"
    "nl"
  end
  language "pl" do
    sha256 "c4ad0b5da4dbc1cbe90a734033fa5a61518d5fefe3aaee66fab5782be550b39e"
    "pl"
  end
  language "pt" do
    sha256 "8008aae56101818b81bdd1c4ab38def3a623f5efd4eeeb5ef5c60b32739bdd58"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ef8c9cea6c262c07b50247b776f8e421d2059b86e20ff6581e0cf0cfa33010e6"
    "pt-BR"
  end
  language "ru" do
    sha256 "853f85a79d4290e70388ff82ff9e7fd10605fb41c300d2a2da03072a35cd212d"
    "ru"
  end
  language "uk" do
    sha256 "f535a400307738bcc6cf70199eed4f3b9c72213771b483e8f2baf981430f2b09"
    "uk"
  end
  language "zh-TW" do
    sha256 "9b4beb0e563c101a41773e0c9cafa65e652b912562df01ce4f723e2e7f4f50d6"
    "zh-TW"
  end
  language "zh" do
    sha256 "c387825a82c6cf523e295470aa8fa41d927b816ad0596dbcf1d6a4d8de9826a5"
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
