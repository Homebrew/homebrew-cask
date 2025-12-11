cask "firefox@nightly" do
  version "148.0a1,2025-12-11-06-13-26"

  language "ca" do
    sha256 "fc818930eb313f4852dd4d1c617c3396f502f1770a578e3482e093248a1a9ce0"
    "ca"
  end
  language "cs" do
    sha256 "8c127fa01a6846835bffeb60deee659c619a6adcd350dc010f20e5fa05315408"
    "cs"
  end
  language "de" do
    sha256 "5af465c8feb3f7652dc1b1477661a0ca34d21bb6b06cb36a31a2440f5a804c19"
    "de"
  end
  language "en-CA" do
    sha256 "9d3aa4e6ede9e6929715756107ba62412692fba23e34488e6b24f9fc0a8b3678"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a9ed36d183acf8df933585ba0a1cfd9b7c2da34c8ab60a83c4287ce4b9db2768"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2e20ede0d5d1737b6fcab19f237d47524d7b1ac90f798ef230782ad70a9cd148"
    "en-US"
  end
  language "es" do
    sha256 "fc51cb8ce14888212fe1970df6fa669bd13a35fd1f79322b9d57b22edab0d6e9"
    "es-ES"
  end
  language "fr" do
    sha256 "1cdd38e12f177808aa423201f72ec5145ae2d2bebf6cf1cac9ecb52a42e7090e"
    "fr"
  end
  language "it" do
    sha256 "06ab2aa8cb62a056c4f9330fb6f5c24ab2e05363563fe85a2547839228282029"
    "it"
  end
  language "ja" do
    sha256 "a0124c9871edfb44a82b1213dd951e4d2e5ce64825d9625f6879316aaf568bcc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "db7598b5ed83125ccc28557c1cfa71480cdd46a1b101bbf3519968a151fcc9e2"
    "ko"
  end
  language "nl" do
    sha256 "ab913ccea7ac153ccdb2b7642ffc46380e7adeeb2ce2fe83e37e67774f615617"
    "nl"
  end
  language "pt-BR" do
    sha256 "af17ace171e7f33cd586391b076e3adc652cd57b944706b6821fbdfc975033b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "878467af85c3115a4609aa2ce5f4beb2e31bd4d37791126bfc2bb640b839c455"
    "ru"
  end
  language "uk" do
    sha256 "0d2173f379311eb0174332b7bf7d0fd04c5dfd2d4bb2af247fa8883d39afab3f"
    "uk"
  end
  language "zh-TW" do
    sha256 "48e95180005b6b2ebafc8cf96f3cb923e8ca66c209979c4962c52f8816f02735"
    "zh-TW"
  end
  language "zh" do
    sha256 "e2d6c4cc98f063dd9fbcc2fd83f276602640b584923f849787976f4b00971465"
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
