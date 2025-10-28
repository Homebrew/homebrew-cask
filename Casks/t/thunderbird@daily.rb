cask "thunderbird@daily" do
  version "146.0a1,2025-10-28-10-48-39"

  language "cs" do
    sha256 "2c95bfde5d22a5f1376544d8097e14892e95a65b14bc7901db5bca432ffe6461"
    "cs"
  end
  language "de" do
    sha256 "d85595e3f11a4650e821a828a46ccc871a3b26cfd8f006a56a266f7070ea0eec"
    "de"
  end
  language "en-GB" do
    sha256 "5d5fb63d6b79144c3801da9c6d706fefed3020f7b9dd65a025930387f86b44aa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2bb137cb380d83b08c075e343dbbe6ca4eb3563aa3ddc7f355c542d828720b74"
    "en-US"
  end
  language "fr" do
    sha256 "63021236bf931ff32c114e561eafaee832b5226db6e1a2a7c558c49c3e0efabb"
    "fr"
  end
  language "gl" do
    sha256 "494b20c4a91b79a2d788566bd278d882748ecb9f703f3e7a636cf696dffb49f5"
    "gl"
  end
  language "it" do
    sha256 "a3692a2a1793e892c92b0a4b041db288efc189bc97a2e5758cdb1627c1bbc51c"
    "it"
  end
  language "ja" do
    sha256 "2c6229376885bc2c14b6b0d4328bdfe27b795f0c51327a3441cf3770b40f5974"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "54969fc380a6a59040b9f02afd054cef34c005279f770d44caa4075c19aa7ba0"
    "nl"
  end
  language "pl" do
    sha256 "0a1822fe02bfc9a1638da6d38589e60778a521c8a8b4349a2bd7a93eb6b323d4"
    "pl"
  end
  language "pt" do
    sha256 "6557f228539f14b32c96c01b494e4a9ac0db45a7112bae6abe8685fe75c575a2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "177b468bcb76323af8b0cf234805910f23fd2d90d960b02bc9f83ac3d24e6d29"
    "pt-BR"
  end
  language "ru" do
    sha256 "db9efa9fcf22d53aee0900be2577c5d98537eb040b096f9b5f3b3c2dd50c572f"
    "ru"
  end
  language "uk" do
    sha256 "c236b47599233ad2e56b6cd7251f8918b9ed9cc2afd891d2cbd28b7f272082b9"
    "uk"
  end
  language "zh-TW" do
    sha256 "9dd4f09b89d513e8ed0f6b5f631be04d4783d0fc227e1845d7733caf740ad766"
    "zh-TW"
  end
  language "zh" do
    sha256 "56df4fb7b450888214f875b694cff9456da4933ae12767347a00321cced3ed5e"
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
