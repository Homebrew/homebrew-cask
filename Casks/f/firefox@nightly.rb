cask "firefox@nightly" do
  version "148.0a1,2026-01-10-09-07-47"

  language "ca" do
    sha256 "7afa086dbfea51c6d1aa8b0623ae840d0d218b677338d357bd899b1a3d9c6991"
    "ca"
  end
  language "cs" do
    sha256 "5dd52d22dcfedf5dd210675841a75ad9f2683562be856443e3b931d66381d065"
    "cs"
  end
  language "de" do
    sha256 "1721c98cd3d420a3ea39349515155a310905d99b460c816ed69446364bf395ec"
    "de"
  end
  language "en-CA" do
    sha256 "590cc8dff4912229beb825a16e268d3fa269f8d6c5d38bf5fdf4c2243f6b6624"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bfab2aee73c92e34929edb31aca1433231186aaa68562154554dd1b700e15598"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a0396d9c16189150b910dd76f1c7f4c3dda1c566938eaeaab4e1ae27f92b28f"
    "en-US"
  end
  language "es" do
    sha256 "0b1252f2d34da7cdc49e05b6e312abf1e4dd2f8e2e1fcfc5d95e9ea19b6a2cd7"
    "es-ES"
  end
  language "fr" do
    sha256 "1b12dca7605ba4a13cdb78101698e555236e221af66cc1e6d594488d868010d6"
    "fr"
  end
  language "it" do
    sha256 "9e1e45cbc43d5de2e73e707734a9ccf36aaa478828f248aaaac4f201908277b0"
    "it"
  end
  language "ja" do
    sha256 "e331f04a57235b8c14ce15efdf6adf10e87d960d41f8a758ebbc7b9db158821d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1ff000f529c9912394aeaf00b9c948bd63e3e8140459f2d1723668d6c85f1ee7"
    "ko"
  end
  language "nl" do
    sha256 "cfc63a6cde2c384e6c4ecf3869025eaaaa92ffa3ed329c150beed501954cc1fa"
    "nl"
  end
  language "pt-BR" do
    sha256 "f5f434a53e17f1d7fe3b5486e129ee9546023250b33039a444d8e0e05f83929b"
    "pt-BR"
  end
  language "ru" do
    sha256 "b4bdc6523adace1be4e8a7af2fc584d5738b031f77d107f7c8e3ad5b838d8d8d"
    "ru"
  end
  language "uk" do
    sha256 "dfe79497f48f152c4d62e2d94af82bcf55de8b6a61821979644aa22eb9cb6108"
    "uk"
  end
  language "zh-TW" do
    sha256 "4bd2565b223ba80d5d766f6df7c1ce29db82d92b76bf5615d6acf030aea3e15c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a29e9eb7de0e65a2e80a419757517b529e9474b5855d1baa45ae2c6434ef206e"
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
