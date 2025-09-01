cask "firefox@nightly" do
  version "144.0a1,2025-08-31-20-19-08"

  language "ca" do
    sha256 "207360c5afebb1f3c5278f49860aa5f633d6b399e7cf2cfe92d1828bb2be57f0"
    "ca"
  end
  language "cs" do
    sha256 "58408951bbcad22319469eaa821fefb5742ee482317388fae24d931a9bf0a8ed"
    "cs"
  end
  language "de" do
    sha256 "a1da00d6f853d3640b7c84a61088c2aecd344420b39034e2c3e1a3b102fdeab0"
    "de"
  end
  language "en-CA" do
    sha256 "d25aa12f56eb82e3c217164457ed90e53d78d9ad895017d55ea65cf058b997e1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4cfa2d0a2b1512bc725e32b7e81ca3c8d9014fe75b096ab487eba863475ebef0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "60285d63f62c30ea24ea02a64601907d336b351edb6c785469842e26e567ffe5"
    "en-US"
  end
  language "es" do
    sha256 "6aa0262d16633a2cfa9fa9f174a680002ac9877244e6aa974500b8339e144e4b"
    "es-ES"
  end
  language "fr" do
    sha256 "731b11b4f5e2cc398da68775d5b8d471d2a34b7b46b97a78846d56a7fe295104"
    "fr"
  end
  language "it" do
    sha256 "15876b58578fb300fa23718f9e60c13783305dab25686739b60f30dd6ff877e2"
    "it"
  end
  language "ja" do
    sha256 "69801216c31c24e61b9c9e083a9e7bf8e8f57cbb950e2d69c60c97b96b3eff88"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "029ac3ee39f9295b4d143815f7f3c927f8434b667e779bd5cacf1b6d4374c00a"
    "ko"
  end
  language "nl" do
    sha256 "de8539a6795689563eb7a73e98083012d5b04ce1a4def455c5cc03ef657934d4"
    "nl"
  end
  language "pt-BR" do
    sha256 "920dd63842b9eba6f6419ca2bd0bbe00398038245f4f790942c6b5e14209636e"
    "pt-BR"
  end
  language "ru" do
    sha256 "5b60e0f4155ef92e445e589ec8de317d1150eb6276ce49671f9612da06da51b0"
    "ru"
  end
  language "uk" do
    sha256 "968ccd17e99b9826786178c7c259679c8ced0b09b849ccbddaa09de9a2090379"
    "uk"
  end
  language "zh-TW" do
    sha256 "1b873221a35ddf5b70eff70d64e178165e1a3a865ac5230827721624b8688a27"
    "zh-TW"
  end
  language "zh" do
    sha256 "38294dc80b70771576b5b75bbd57b7ef48f620b83d01c884242b55c9bed01cf2"
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
  depends_on macos: ">= :catalina"

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
