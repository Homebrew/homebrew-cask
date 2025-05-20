cask "firefox@nightly" do
  version "140.0a1,2025-05-20-09-13-41"

  language "ca" do
    sha256 "4b410d8f06e600e75bcf839b30b5c552645987de1dafbde878a4e8c0661f5afb"
    "ca"
  end
  language "cs" do
    sha256 "85b252d0cf010ffbcf76c512ce390c9d398fc5d00b539ebcc98be5f053cd8d91"
    "cs"
  end
  language "de" do
    sha256 "fa7e35ed44bc8eed5b94c47780c0bec64703277a55340cc813e965632f453e9e"
    "de"
  end
  language "en-CA" do
    sha256 "8693dc835ae78738c0ad211e754c76f082f20a85dddb926f377c6fc860ef6839"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fffe30031ec8cce35b3c8bbbad4c37be41cbb7a714b8f750da5bf087823faebc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eca4722c95ebdd2d12f0d36a394f5bf161f75ab21fe2f8197971c699daec8ba9"
    "en-US"
  end
  language "es" do
    sha256 "3e079168c9b92cbeec76778c7c47a829b46bc4f2e421239307d9ec70d29847e7"
    "es-ES"
  end
  language "fr" do
    sha256 "c321786d4235c85fc72c59eee4696738cc8c6862b82c6f8e8097633c02413752"
    "fr"
  end
  language "it" do
    sha256 "a83fc554bbcad75df2203d8c960af6f4a1b62a26b4c19b8c0c7ebba84fdf52eb"
    "it"
  end
  language "ja" do
    sha256 "465e3c1f0a259fd8d9930a63189a8c333efe187a85c1144335cebaa03b6ea153"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1967e0439352a9c46ca69bcf1b568b714d91105ded66f30141e5dac7ec021781"
    "ko"
  end
  language "nl" do
    sha256 "7f24670035fb7a3fa8862a60edcde3d6b0d50632c4dd56e900691a56ef6697e3"
    "nl"
  end
  language "pt-BR" do
    sha256 "6d9c8a3216138de97efe025a5e46d69a44b951c0f8806cd5f5bd7e04960bb8bf"
    "pt-BR"
  end
  language "ru" do
    sha256 "35c2d7a3aff4f8467602c9dadc51ef952e53e9b75dc998f7c5423321f6bede07"
    "ru"
  end
  language "uk" do
    sha256 "91c6f5242420e278cdb0cce8d041e2dfb739f3dfaba6358dab715f619377559f"
    "uk"
  end
  language "zh-TW" do
    sha256 "9f03c1ed336399fe08cfe9359563ea8643923e3c3bf25424fbeec8e883b5c34e"
    "zh-TW"
  end
  language "zh" do
    sha256 "3c7e1dd2735ad31ed7031407f71a377e61b2f890a383fa8b308ed6e6f1339c3e"
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
