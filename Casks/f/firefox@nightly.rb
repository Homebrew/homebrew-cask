cask "firefox@nightly" do
  version "151.0a1,2026-03-25-21-21-51"

  language "ca" do
    sha256 "135023f65bcee6e86ee905c36d6ec627373cdfac53e46bcc6af8a9bdb22ee618"
    "ca"
  end
  language "cs" do
    sha256 "d3d8a3f26d589f77b302da84f08b6026e087ea77296d8fdf558840f37fa59fe2"
    "cs"
  end
  language "de" do
    sha256 "a0d27ec96fc7823a217e17e68bbdb67040b7f8f91d49524bed3155ecb9dfa6db"
    "de"
  end
  language "en-CA" do
    sha256 "c0346b7ec8d5580783f1d088b485e8588db7fb71a2109f13e15397902e901a57"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0e14590a47256647ff384db2863bb8a12daabd31fead11676927003177d3059c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2694412303e147b702b50ee0828be18c34a9820764dd6cdb6ce7c7e7236a4d72"
    "en-US"
  end
  language "es" do
    sha256 "e3e9f29f08b456d848cda50f5ce280a3376d5000febd7dcd6abd90dcdc8a6ef3"
    "es-ES"
  end
  language "fr" do
    sha256 "ec680d81673886e4123590b660df0f6e9e95d73b8b68f16512d36542b15a0684"
    "fr"
  end
  language "it" do
    sha256 "39a2d1b4f49c5aba4ff8ee528b20c283e25f33a15cd59292f4eb781a18025968"
    "it"
  end
  language "ja" do
    sha256 "5900c00266ebeb5a798c21079e2bdef16766ef9aa6d8253ffa40b80b848d02e0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "295a3aee96ba86959e6f54cb90584ee836e469f2ed264ae7c7f5d921b4c63173"
    "ko"
  end
  language "nl" do
    sha256 "9adf0a1e3a1a464e770557d11e572145f28a2f8ee1e9f086c6a7b335e1c73770"
    "nl"
  end
  language "pt-BR" do
    sha256 "14c66c3438c1c42dc20a85e26d2889feba41daabd987ea1b2f65ae29bfccb41d"
    "pt-BR"
  end
  language "ru" do
    sha256 "ed344ec9bd762f0a1fadfc4e9d86ae7ac85b13b2d2d308dc65b3c03043683c60"
    "ru"
  end
  language "uk" do
    sha256 "054f47c23753fa507660c9dfc141fedbe2ea7394962dd79c924bce3ba2b099a0"
    "uk"
  end
  language "zh-TW" do
    sha256 "25ec6e6b9c2ddec40727f396b15c7f74312f4044e1eb4a7847c2168c9040120c"
    "zh-TW"
  end
  language "zh" do
    sha256 "7d6866dbd92d7a8898729708b78c3b29dbf3558954196309df0936af4b254d84"
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
