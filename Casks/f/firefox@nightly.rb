cask "firefox@nightly" do
  version "153.0a1,2026-06-05-09-34-47"

  language "ca" do
    sha256 "3fc189e5a85ba701ba03f6a38a75e6fe12f5bd8299b3d50436a61d6185911126"
    "ca"
  end
  language "cs" do
    sha256 "e102a3b5f94e8bfb16a73bf845c1463dda1056ba358e4e5c381c173e83be01b5"
    "cs"
  end
  language "de" do
    sha256 "9df5b0af6b4755191b4eb0b1c6f867f54a74c93beb0dd2faeb39d618a5fa3e29"
    "de"
  end
  language "en-CA" do
    sha256 "5ecc6c4b0a52659bb0304a3bf93d055b5b4cbfdbf6a3223c59e82a3d135de2fd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "56fe6400f7fb5f4f14505e32c788b9aeb014077dfc6801775281cb08b0701711"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0807e2a7f3470913e98db3c9a6e9c2055b9f66d5e63fe0b8f0b22523f1b55a3e"
    "en-US"
  end
  language "es" do
    sha256 "4e51a795500e1234add79b772ca472ecb7cfcdf30db3940504187a75583ae2fa"
    "es-ES"
  end
  language "fr" do
    sha256 "e067bb1683d409f549efed361b63e045a48b6ddec7f290675849e50d20e185ab"
    "fr"
  end
  language "it" do
    sha256 "c7912040c967d69db1bd76eb35e73a0fc349f9e80c510e46db7e3e705750c6f1"
    "it"
  end
  language "ja" do
    sha256 "274f709ca289567f6ed871303bef8834fafe415203c52430ab4ab4d709ede3c0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "95b785400404cbc791962352f2f32629b6ece3da3e96b7bc8e3a3194eed4dd25"
    "ko"
  end
  language "nl" do
    sha256 "88359d346677407bda42bca6b44696c1dbe3e8b3f300f1ed768b81bcfb9a0d76"
    "nl"
  end
  language "pt-BR" do
    sha256 "ceb46a8bd295932e956abec1b342b1ea1f03e0a05902591f4650b5e8c5f2a52c"
    "pt-BR"
  end
  language "ru" do
    sha256 "1cf75e5e9e4c64beeb4efbfc56bf8a3cfbb9c14e146e264fc9e555db660bef8b"
    "ru"
  end
  language "uk" do
    sha256 "5d4f9c7d5a5224c232c7f82c2cc5848bc1302b1a052921a432ae447dfabd1f80"
    "uk"
  end
  language "zh-TW" do
    sha256 "04f735558b6b3677afaf940ccdfd7bcf1c5886e61baafbfaf5d70e8b8ff5a11e"
    "zh-TW"
  end
  language "zh" do
    sha256 "74c9c512228f177b2d8e8046a5c710aedb74962d638cc057fe86a3a3bcc7ab58"
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
