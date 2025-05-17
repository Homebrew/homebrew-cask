cask "thunderbird@daily" do
  version "140.0a1,2025-05-17-10-08-34"

  language "cs" do
    sha256 "450c65168b843227781643dbf97d5c1b66247274dafe777b562e8943e1c4cd74"
    "cs"
  end
  language "de" do
    sha256 "1c3fef0d208eebd7b2a8f19f2438b3ce04d8b11ba4c6567d405022d482a52778"
    "de"
  end
  language "en-GB" do
    sha256 "574ebd7cb77f25eed0b32a613ad2e3336d601eb23f786832e7b631f8dfbfc4f5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f771b0193541acc5929deafebbe648bbbf121d41622157cccbe5622c3f66eb0a"
    "en-US"
  end
  language "fr" do
    sha256 "455708500dbbec7b1fe7743fd16fe4f3273e7cf1671ed4ebe739bea4b493c096"
    "fr"
  end
  language "gl" do
    sha256 "6346931a0da8a396b13afde2e9767b1847bdb361c64139101a486c713e0fb79c"
    "gl"
  end
  language "it" do
    sha256 "de556b5e32c831dc0a84531aaa2a8680707d1c91cdda8254c82385aa7ec78235"
    "it"
  end
  language "ja" do
    sha256 "c6e543d391925077bbd9e2f280730bb9276ec48a445e4f65bd621f0886827fd6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7acabc60f6098ff0bfcf337384e1d7be6ee971b01da4609ce272c2a495ac5716"
    "nl"
  end
  language "pl" do
    sha256 "7c4c2dadf2adcc323e1775adcf061db31149a5cb60ca2a1be6b2f87dfa3da243"
    "pl"
  end
  language "pt" do
    sha256 "7b6af2689032c22f50e5af5cb19884a1b6d30670b01ee8e41fcceb453e3853c1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "db60826feef8a180099bcd6eefc03422f44ef9f603ff296aad5f49dc555b7da2"
    "pt-BR"
  end
  language "ru" do
    sha256 "eb1323c535e4ccc8ab4dfd6e978488868c6abd70b0690e540f260753d900a733"
    "ru"
  end
  language "uk" do
    sha256 "7772ec27ba792ba36e450300fa696b1d6f7e2d2d322f92aa5d51b743a15f35d5"
    "uk"
  end
  language "zh-TW" do
    sha256 "1d48d6e800e7a4c06522c125a6cd518fb2d9c70ddcbce136995610114606d6f9"
    "zh-TW"
  end
  language "zh" do
    sha256 "71b62f9b0bb74d6640d2333d340027f4438c6e4eaa7d48900b5c8d4bd4a1b087"
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
