cask "firefox@nightly" do
  version "148.0a1,2025-12-29-21-35-17"

  language "ca" do
    sha256 "448f2d56ef221a9ea3f3f71fd84140dbc1457844f9f689866b0f7f894bc2b8cd"
    "ca"
  end
  language "cs" do
    sha256 "06e55e475ef8f9b25c114ba5e37fb5c3b12be194a34cc8290c1f0f096e1457e0"
    "cs"
  end
  language "de" do
    sha256 "1a360bc66392070259b3baff52dbb62a3018b8d8995691ee1b31299e26f60526"
    "de"
  end
  language "en-CA" do
    sha256 "0da8afd9a7daf3376d52389b3b367bb725e359eea060933f7ad855d586bf8e28"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8fc81506f42e18f55195b1f2d32686c60a1dc53eef35b1d92f719f2956ad09f5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eb4ed1fed25d264c07545bba1d586e37cf4b23a365286cc36a07a78980cfcad1"
    "en-US"
  end
  language "es" do
    sha256 "b0fda82a02561d020095791c4e556b2abca246419398a25c2d3978c079225010"
    "es-ES"
  end
  language "fr" do
    sha256 "f139c1f4fc522f55a44691cd263e344882c93469acd61cf309d34f3bde1fdaa5"
    "fr"
  end
  language "it" do
    sha256 "a0d677fbd059bed16e21d4407f4d23e037775c77b5baf64e76b0a98d585a4f1f"
    "it"
  end
  language "ja" do
    sha256 "fb17ad5d556f2a5c8cf902c5553bcedc054a981ab7a07470c3681a40e8b1b623"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0130b5035e21f142317bd6bed961e5f58468cb34f2c5ac040a57d8736178fecc"
    "ko"
  end
  language "nl" do
    sha256 "2f7073bfded961094f5e73f8baf6a2569712ade155952642680ff01749339331"
    "nl"
  end
  language "pt-BR" do
    sha256 "65fae7c12f24fd994b36f8feb730bb35af5e915fd65e5a26b5b24e8d58295e66"
    "pt-BR"
  end
  language "ru" do
    sha256 "4710d169bdb41cc7d01833fe3b793d1756673c4c8a6ef3a4fb74acb32f83c084"
    "ru"
  end
  language "uk" do
    sha256 "0eb1ab0dae72abbdbc3ade19d5151d9bcf5b035fa03b79b17f7f65281dfec98a"
    "uk"
  end
  language "zh-TW" do
    sha256 "b7e3e172e77f20a8d4bb0e8332b410828c82f64d5f3fd493fe4ad6f6ce0770a0"
    "zh-TW"
  end
  language "zh" do
    sha256 "d7ba8ffb03e5f4930aa067274812ec91f35bce184a064701a3340d62052e1952"
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
