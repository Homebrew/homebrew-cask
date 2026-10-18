cask "thunderbird@daily" do
  version "160.0a1,2026-10-18-09-58-08"

  language "cs" do
    sha256 "757998384911bc600c6a22de85d4231b56bde8339117e99ece497d2568675d14"
    "cs"
  end
  language "de" do
    sha256 "bcd97b69db3582201b632d0a29535382e9c9b2ee46fd97b5a309c7978ade9baa"
    "de"
  end
  language "en-GB" do
    sha256 "dedc79feb957ad1ad5e7bb7930b7c5324b4d2a949f4d6a32ac845c8f3c7e8ba7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e666596a7f9c32e63a840fbebc87f06351da9c42ef2a6497d6cf97ac2b40b75"
    "en-US"
  end
  language "fr" do
    sha256 "47d45fc0d765e075eb5fe390ad11ea51e9fc64703e4e4cbf01a00aab9359791d"
    "fr"
  end
  language "gl" do
    sha256 "0b7bc323a761cbaccdb88421f783483f2d6cbfe1088e19ab4185ddd050d02b90"
    "gl"
  end
  language "it" do
    sha256 "f432f23b931eda948c028fcd474a2f6b7f4e9a3f68defead11fbf9b67517f765"
    "it"
  end
  language "ja" do
    sha256 "403878c2f55040407eb70f7267918fd66c70bdbd1a307c3d9018b9d9bd4ed600"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dd3126c17bfcc865d6503e79e3cec8566a29888f93f53f9061b11e8644c342b9"
    "nl"
  end
  language "pl" do
    sha256 "b505c7af7e6fb9259e11863544c6216a1eaa07667b394508367e484d13aeb968"
    "pl"
  end
  language "pt" do
    sha256 "4a758b881e092d57c324edf71e69eb9f16e8efa46716a9b6c9b838dbb05effcc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "38191af02781df6be97e583081d7edfe4b219519a574ec2f189bf15b386e7e1f"
    "pt-BR"
  end
  language "ru" do
    sha256 "6152f6497c219758135fcd2e0dd3501452870cd85a4ff6c79dc8d0b6284fef14"
    "ru"
  end
  language "uk" do
    sha256 "0e0e10721538cedba45ab6c00cc2d5c3e5ad1b573c027c71e72ad229ced76340"
    "uk"
  end
  language "zh-TW" do
    sha256 "e204286ff729b6614aca5b0d9b7cdcb9db6b6d76bdd548c963d6386702c4e2d1"
    "zh-TW"
  end
  language "zh" do
    sha256 "a70e15bfba2ebc222308893e894d5d4544e125ce301ccf71ee53f08d316f0ff6"
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
