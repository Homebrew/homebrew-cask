cask "firefox@nightly" do
  version "149.0a1,2026-01-20-10-01-02"

  language "ca" do
    sha256 "df6631290562b16c92b98323f6568b293e3a669b0d5da7827392f1ee4508d65c"
    "ca"
  end
  language "cs" do
    sha256 "fcef7138538b77532fb20e1ba29129e6445c91839a325f048b45dc1f5e4fc35c"
    "cs"
  end
  language "de" do
    sha256 "e5301ba4519ed1550488cc1f75e6569c37f7c81fbe07a66ec20a1a8cd2dab6cb"
    "de"
  end
  language "en-CA" do
    sha256 "e29729c1ace7de15e120ccada8b93859dd1efa9880a8e74578c2212794b5ae1b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "93c32738fde2af8e1d7c814c18cc8c65f6aaaf4a428d45b5271b9d4baf78dd18"
    "en-GB"
  end
  language "en", default: true do
    sha256 "02cd4436024b73868b06f16f5c655ad724786b919d0a0e82f4cf9de8ba24bb09"
    "en-US"
  end
  language "es" do
    sha256 "d703ab0d581ddc6f5ac24c62a2b9efc374d0475530eab57b2eae002642241959"
    "es-ES"
  end
  language "fr" do
    sha256 "fd4a6412a82b217a48375357862ee43d6646bdd0db4df30bfcdfdb3cea306c4b"
    "fr"
  end
  language "it" do
    sha256 "f74cd652073edb3a76c322797ac8c49bd1d805a456f4a3da5168e40fef894fb9"
    "it"
  end
  language "ja" do
    sha256 "48d80614a38f70907223eb76ebe901b303e28aa6699526542dd53b7f460eeee2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dda2fa00e262050e4af522e63222843d22ecd4a0f4b161980ad11ab21bc3c393"
    "ko"
  end
  language "nl" do
    sha256 "b46bb2027b650ab1e69ca9ea66fca0416d25152612a0bd07254983570b9eb78a"
    "nl"
  end
  language "pt-BR" do
    sha256 "d675e213863f59dd2dd0c8c56d46e020b91f146933741ea06d1445c54bd9248a"
    "pt-BR"
  end
  language "ru" do
    sha256 "2e48dd97288bc3b4a005af1561017dde1641fc713b393bdd09e8d744dddc23b2"
    "ru"
  end
  language "uk" do
    sha256 "c191fa41b0adcfc1bb9729dd7071040d436fd28eb43e54367f694db1b6f1467d"
    "uk"
  end
  language "zh-TW" do
    sha256 "8f037d4c8a0a486e614247c4360720727d802c231e9039fa0210513cd469112c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2456b817cf2e07476e842ff28369d802150e12013c475696c1fb92fc8384776"
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
