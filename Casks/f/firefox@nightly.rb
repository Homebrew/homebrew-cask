cask "firefox@nightly" do
  version "163.0a1,2026-11-25-21-09-57"

  language "ca" do
    sha256 "254ec9db3ac90ffdc0080b1611edf9a586a4178cd1967b4f1aec70e0d490bafa"
    "ca"
  end
  language "cs" do
    sha256 "cc90aab654a67964b3a0ddeda5ae52deae4945bae910a3bb82b4bc8c61eb716d"
    "cs"
  end
  language "de" do
    sha256 "39a7ab47d48a7abef64b90680de1fc4beaf9af05e46e471a29e8cfab057915d0"
    "de"
  end
  language "en-CA" do
    sha256 "2c030adab926d5c192da8dbf5406c66b16734f0395d527b873a3443e12d6afc3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cb84a950a18aec079107aee99d21d3aebdf89a2c34cefa7ff6fd8ca7ebe2c8bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "35007fec2173dc6f3f48e2699a4ebd3f10061d6cda3e0eba8bf152e6eb816560"
    "en-US"
  end
  language "es" do
    sha256 "eb0cb567ae7cb7d0538adcc7f57ff00cdf2935b9fb495e0e03357c59dc9cf255"
    "es-ES"
  end
  language "fr" do
    sha256 "fe088e6caf2b37102535e6cc235ac27bd71705bc8136f41a21625da8663f153f"
    "fr"
  end
  language "it" do
    sha256 "48b5c9feacee86c5aa31c674ec35ce48717bc7369b21981a41cac68fd0f41465"
    "it"
  end
  language "ja" do
    sha256 "887bc092e252b85af9952131b5a0964677112c3a7da5a8cf2df4360da89732c7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8c2701142b25c186e018c1bff09051d5fc8c2ea08be024f436b4d7022258bbc1"
    "ko"
  end
  language "nl" do
    sha256 "5dd1ea7cd7d6f34ffb157b77151def0b5320ddce74142324e815ea2d4e1e8479"
    "nl"
  end
  language "pt-BR" do
    sha256 "b6177da241d610d47a01801679373d1054fa6e9eb7be51ece5927396843ef618"
    "pt-BR"
  end
  language "ru" do
    sha256 "34ea6d7cd9c40d487849a1290d0c1eeaa5d21025b1189e64da9acf966ae8e457"
    "ru"
  end
  language "uk" do
    sha256 "13e589a73cbea6c49b21a44292ee46cfa0bbb4a14ec1e3bb3c6710ecf761befc"
    "uk"
  end
  language "zh-TW" do
    sha256 "86bfeee22fee40a34a83448ef804b2c4ca154c3a3a56fa98d8afb034bbe1f16d"
    "zh-TW"
  end
  language "zh" do
    sha256 "7d60e858c81b90aa882c8dbb9e6766aa68d2b69be87fae2305cffd3eca895c75"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
