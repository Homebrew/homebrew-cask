cask "firefox@nightly" do
  version "155.0a1,2026-08-03-08-56-00"

  language "ca" do
    sha256 "4cfa8a3bf08b144dc5182d2ff429269fa5c20002e31c3ac0c7ef10fb37219f61"
    "ca"
  end
  language "cs" do
    sha256 "d1af2d6856f910fae3f19ea5bf5f72d3fbdb2f5f9e3aa7edb1dfdd212a114dc7"
    "cs"
  end
  language "de" do
    sha256 "3b5608425beb9aa06265b5272a65341c956e0d31009aedf4cb0dfec0f80ea9af"
    "de"
  end
  language "en-CA" do
    sha256 "a3a8c418f19dd820c4a6ed74c4c33e3aaa82220b2119915d0208f7920a5c2a68"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7c573921d8e93015c7a29f3462e41b9cf95f8bf41e9a83e6ef4a9d19437cb75d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "696c61228eb57b19e38fdfb15abaa782afad1592258936c7bc3b9913a0712f08"
    "en-US"
  end
  language "es" do
    sha256 "dc2f37789536d8a6501aa513fd44060f1f0383d4dad4594b8e22ca3957cb173a"
    "es-ES"
  end
  language "fr" do
    sha256 "163acbf41f3a00a59b8dfaf7c272ccd71ee871d26cacc6e7131be52eafcca50e"
    "fr"
  end
  language "it" do
    sha256 "cc7c4233bb3eeba1f7c7e3ef85b3c011837b146f373440dbd52d5c6308cbe09a"
    "it"
  end
  language "ja" do
    sha256 "c09eab24e81aabfd2f95f68346c3d8c4afdfb877d8456575b01352aeb826051d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "95e706883ca56227e5b1252dafec56d52baa654fa80520379206f266a8503220"
    "ko"
  end
  language "nl" do
    sha256 "aba67005f8212835e283afc161a1007857728108a72467d6abcb7b448c26ea4d"
    "nl"
  end
  language "pt-BR" do
    sha256 "858b238e884dacca05775256fbf71b4f209d7cbe34b4e49a378fd5089341a7c2"
    "pt-BR"
  end
  language "ru" do
    sha256 "8649131e4324173b810b9bf645182cfd700b3f0453c3579ecb5e3d1a638432f7"
    "ru"
  end
  language "uk" do
    sha256 "eebb607012e01023f5b6f24f38ad7ddce25cb35e5a998a953143599c2f79d103"
    "uk"
  end
  language "zh-TW" do
    sha256 "7a28abf152eb4c194667fc2ffdafa4702f22bd479961afdfc61a2afb5b82d2c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "ddbc08b52fe676424733dda459628745b0623d51a48ef6f08505a39d303be801"
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
