cask "thunderbird@daily" do
  version "160.0a1,2026-10-12-10-06-49"

  language "cs" do
    sha256 "5dff45798bdb53e7a5114077cc6ba4a8b61053420d49b3568a1c1f6d73c9408b"
    "cs"
  end
  language "de" do
    sha256 "6b04a057c2e3c3f4415fa6c5949ec36eb3ac110894a8ae8004a246ec425574b9"
    "de"
  end
  language "en-GB" do
    sha256 "ffee38a24e940ef2d4ba337c176cc54ce3faca16ffe457a6551ca4acf53464f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f6ee7d93a7bc4f63fa1f562a1c4665db6ebdd64ec3db5c549d59dc5de39cf4d2"
    "en-US"
  end
  language "fr" do
    sha256 "c5f9948fba2d074cd1850d02653929320d835be3515a1b870478df40868e0fed"
    "fr"
  end
  language "gl" do
    sha256 "0268bcd9ca73112018f65f051b5f39197d5b0793f1f5a91b851eb981c17a5327"
    "gl"
  end
  language "it" do
    sha256 "bdc1b0b3bbe7345d6db7450b679faa1d2c5e5584054bc997aebd7af96c370a9a"
    "it"
  end
  language "ja" do
    sha256 "9cdef5d53089282c063ac24f4424e7251d38fabd9e957b3b57f277995b3e9bd1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "58b3448fc69f3b113c1905dc42fe409236a7cb7d97c7861888eafe9085e2ac2b"
    "nl"
  end
  language "pl" do
    sha256 "bc808ae34fce2bc370cf6fc68da4649ca1b578db0868001f91eed01d9341b424"
    "pl"
  end
  language "pt" do
    sha256 "9792e7617bbe36931a7232790187f20a332e58cc26febe3eae82758242c5b58e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c9ef82433099f58af832acdfc84cbf7ea0c26ad74a1320cb2fa8b584b7337db5"
    "pt-BR"
  end
  language "ru" do
    sha256 "7a64838e31914b1b68a8d99b578e07d589942b968cc36cfe74f5cfeb5f307595"
    "ru"
  end
  language "uk" do
    sha256 "cc0b216c31a336352f019b538dd0a555e5d8c331db504bc4bcb0d9a56d7652b8"
    "uk"
  end
  language "zh-TW" do
    sha256 "801bf119270f7d951d110b23847153b34bdeb97aad4880d8fb3b42305854b3f7"
    "zh-TW"
  end
  language "zh" do
    sha256 "c9abdc336474dfd72e5fc98c2d7c15a1d3fbfb1a8f10d5608cc7b332b67db5ae"
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
