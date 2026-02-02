cask "firefox@nightly" do
  version "149.0a1,2026-02-02-09-50-09"

  language "ca" do
    sha256 "d7b577c110376621ff4c06672326edb2b2428fa5fd271696d5e99036fb476e50"
    "ca"
  end
  language "cs" do
    sha256 "3ed7d96836efc936871c5e962ecbbf57f58857e7c923e9419e12e89e12a5d5cf"
    "cs"
  end
  language "de" do
    sha256 "64f8811ef882eb04af7e5cd5643f4b1b1bbda37e3df988da061fe1bf50def080"
    "de"
  end
  language "en-CA" do
    sha256 "f11b39ad7fa95eb413b3f5169572b21c1c4dbc5da4727e325e52531619a1a309"
    "en-CA"
  end
  language "en-GB" do
    sha256 "42962dc4b7c77de909edbb5534427962440bc089387101b4edf164f1aca3fcaa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "250a9560fa40c76ae0b2d79fff5a65fbb723acc7a1d4ffff493d201705e791a6"
    "en-US"
  end
  language "es" do
    sha256 "a2521a562f5d318a5f119567f5aeec5686e6aad649395be3e2bc873177252626"
    "es-ES"
  end
  language "fr" do
    sha256 "31438063bc0d5cba468a4ddeb5c5e370fa9dfbe9d862f08eedb2345c17f59200"
    "fr"
  end
  language "it" do
    sha256 "022bb723684e0b2f14320ea052f6d89847b137ef78784cadf8377c81eec42cd1"
    "it"
  end
  language "ja" do
    sha256 "f81fdf4e87e48ca972759c3f4d02e753c6ab5bb996cfae82f1993ac96b95be7e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c20cd1b6f33265a6864679830d9261064e9dcbae52086c135b9ffb483d08b0c6"
    "ko"
  end
  language "nl" do
    sha256 "52818c7de983e0f5fbd49b3159ff0e4d2ef7d6ba6901a4d5106e54e888d83e9b"
    "nl"
  end
  language "pt-BR" do
    sha256 "9196e5bb5039d94da32d232da0de7f998388611d45c11961321a492fce6cb2cb"
    "pt-BR"
  end
  language "ru" do
    sha256 "1932721c434e91bfc82d10d282968636ff7496932359b9c8c5d4ce9e6f527cbe"
    "ru"
  end
  language "uk" do
    sha256 "4cfbe784e159ae9989de0eb19d663f79e3c37373e77759089f4570cb8a962171"
    "uk"
  end
  language "zh-TW" do
    sha256 "a8545950c078ca08b6e2c145aeb08d1bf72f4efef624d8f97f02c8bb83d1bd0c"
    "zh-TW"
  end
  language "zh" do
    sha256 "08e551b52fa5977bccec6679dbe7ce70ecc8dd04f908e6bb311d171d13565d08"
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
