cask "thunderbird@daily" do
  version "152.0a1,2026-05-12-09-20-58"

  language "cs" do
    sha256 "ee8a009335b0da9956e764ad7e4f0c25b236410b122ba1782a122be5f55f6a7b"
    "cs"
  end
  language "de" do
    sha256 "ea02826720d38a29e47411ae5bab0bc067993b0a35d2aa642f89136aef830d8d"
    "de"
  end
  language "en-GB" do
    sha256 "54fd394be30a00ab5f4b8361b95510468b57909eeeef8d4d8af0734d717305e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1cee88da5db2c35575b36285776472fd323f41648c1807fa71b35d7794c44f51"
    "en-US"
  end
  language "fr" do
    sha256 "a88340e6ed20f4cf4568e4ef63bcd63db8832c5c30fff13a4eaec764921a3fab"
    "fr"
  end
  language "gl" do
    sha256 "3753772ca1c9120030e5852f18c2cac358dcecff101dbb83abe47812b02c3c85"
    "gl"
  end
  language "it" do
    sha256 "bc3ed1b06bbe225d4d146978ae6a9ab5547a2e247803ed2731c02d0274883b7b"
    "it"
  end
  language "ja" do
    sha256 "cf6f33dc1041689e364cf0fda5787bdfe7d6543b33348b642577aa3cde4dd0f9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "07af95d57d49e89b3d7020bdd1730c3f6b5b7933a751a6d71269f9831576f5c7"
    "nl"
  end
  language "pl" do
    sha256 "b1da8240830500b166025afb9f265e71546dc94e7b719ce08a69421c2edbd45c"
    "pl"
  end
  language "pt" do
    sha256 "324d2497f1c0f7d5c4f87ccea65e54c6165d0e32bdaae9ec03b2176c14ee0c69"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7cde75d994f8d9e4183635a70d0ab9a402fc3f55e4b87839941759902fd87577"
    "pt-BR"
  end
  language "ru" do
    sha256 "ebc31efd90feed6d99f296939f10043a6e204356d2d576c5242846d42f4b9b3b"
    "ru"
  end
  language "uk" do
    sha256 "0a031f5c0729f2458c0bfa4d824a04f452d33375e9b01dc1090a8a8c9ce17607"
    "uk"
  end
  language "zh-TW" do
    sha256 "af2dc96b3f7c1cef12f7b456f985cdcb5778ee5f1d85a7fc1e6316eb6c92093d"
    "zh-TW"
  end
  language "zh" do
    sha256 "b1dd68b9002c4434fd3c80754b751680a7c77cc4c47628dcdd0d800311703e4a"
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
