cask "firefox@nightly" do
  version "160.0a1,2026-10-20-19-50-26"

  language "ca" do
    sha256 "24a4ff0a587f59b4ac120dbc9fcef0a8f9865089cebabe9a1fea3d555a96cb19"
    "ca"
  end
  language "cs" do
    sha256 "64d311dd631bdb9828e27c9caffc2d27d5d32764666ded5266eb3e0062eff7d4"
    "cs"
  end
  language "de" do
    sha256 "8721fdc6c401cc3d780debb3e1a9b9727e7f8c9eaee3066b205ba99f33d303d7"
    "de"
  end
  language "en-CA" do
    sha256 "32dbfaa9b6026f388e03c7d47de199a6ef51691a3aa04c1bacbd85a5611eced5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2bc93dd0607d36726cd181d64742d3fb25f66d5cccbeebbc010613d83c3f53fa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ab965f8d269433886e8bd57bbc77b41dc280bead90c6c3410bede88c707ec215"
    "en-US"
  end
  language "es" do
    sha256 "3be9a843e6371606495bf024c574a9c161094c2b268e545d295125696de6d456"
    "es-ES"
  end
  language "fr" do
    sha256 "600d006500f011099cf812459f98917a8029f9fa1ec95d83df044fb4fc39048d"
    "fr"
  end
  language "it" do
    sha256 "79b1fbb639084e88dff9d860b7a2e271d67f45c5d1364e44e80aa2288a80b85a"
    "it"
  end
  language "ja" do
    sha256 "47b1c111f834b380d19d8604cbfe1a5816afe6875bd3f8e4331d5d9cf2b357b4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c68306cc8ac34ab50cb12f228810757e9f1e1d2025d17a30f9e28fcf931b44ba"
    "ko"
  end
  language "nl" do
    sha256 "d94626acb56c6d2980bf10f302923ff051c46d4f1f1775987fd428884f6d5c93"
    "nl"
  end
  language "pt-BR" do
    sha256 "811ccd2788e729ff36a612b04fd275b14855116d7ea8ed381cd95f8c8044f282"
    "pt-BR"
  end
  language "ru" do
    sha256 "7e89b54e1326dd23f7c5a855571d348e0a36788ff25f9d9302a2261e1e644958"
    "ru"
  end
  language "uk" do
    sha256 "186c95c80496f8e8db1f66c25781500a71511a5d654b5cb157917bb43a74307c"
    "uk"
  end
  language "zh-TW" do
    sha256 "c4fa01ba10df329ae1a0e2a377297ca7ff367c4689dbcdc57ed35723d925c8c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "085bf6c982a885f52d886400f3afa74d3cf76ed44a94aaf9a3b2ebb49069b9fc"
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
