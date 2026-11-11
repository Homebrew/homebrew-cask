cask "firefox@nightly" do
  version "162.0a1,2026-11-11-09-11-17"

  language "ca" do
    sha256 "52b9abc16c73eddf49c06fbf4be58e93c7832b061448d5d96db6bdb99b8274ed"
    "ca"
  end
  language "cs" do
    sha256 "ff76d10edb095d4dabce5d322fb6bd45f481be50311eaadf2a82ae287f51a907"
    "cs"
  end
  language "de" do
    sha256 "3ca08a87099505365e19f14bce0d506d0d520fcafdb7aa3fa80524db753ec2d6"
    "de"
  end
  language "en-CA" do
    sha256 "5dcfed0f983c37aa1076013ecb017654a583fb5033f317be5c56551e6950653f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "df1d5396c4a52cd538be6f4699ee4f306ca1fc4b81deaa387b391f1bcad71112"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5ae7159b252ac43cdec985d321215ef636bd44dde5a868c06a2263cf476a59be"
    "en-US"
  end
  language "es" do
    sha256 "30ae8ee9ef40e0a6155bd8d9a03a038f29ba435f2362db16ddfc47618a321fe3"
    "es-ES"
  end
  language "fr" do
    sha256 "fd2020f8ac7198ea4bf7a3f7403fa87e0f28e783f1348d0878130e1dda0fb552"
    "fr"
  end
  language "it" do
    sha256 "56009d3b1deba50a477604889d3440565f0c8c8a988d73fe3ff99aad4a1bb9d9"
    "it"
  end
  language "ja" do
    sha256 "5956309bc949e5a8c6640ff433e20d45c7feae2dd4f8597301729348aeb14bf6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a0ec1dab5e7af9027bd1b373d051a6ea9b4f487f2347dcee386bb53623a5aac8"
    "ko"
  end
  language "nl" do
    sha256 "4e4b4c18ab522df69fff7d1f824cec0ee65648eba277a8923580b9ad43b7d8f0"
    "nl"
  end
  language "pt-BR" do
    sha256 "0099f1339c056f8f9ce18658425b55c23d0b253c086def408e34d901ec9700b7"
    "pt-BR"
  end
  language "ru" do
    sha256 "3364c5a6a3817baf101d9def02c706f657d62c637b1db34e5a44bda9fc26f822"
    "ru"
  end
  language "uk" do
    sha256 "ff65526d61e6b2348538136ba9e5e9b35c82f82f1ffb6684c2eec83d4f39888d"
    "uk"
  end
  language "zh-TW" do
    sha256 "e36cf40b0fa4c727076dfae423c19bad16b9a6b56c6594d19226939e4fdb34c6"
    "zh-TW"
  end
  language "zh" do
    sha256 "6b45c80ef682c6e844bddcd770b339e496905b06863d448794a222b72dd7931e"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Preferences/org.mozilla.nightly.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
