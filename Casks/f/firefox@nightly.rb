cask "firefox@nightly" do
  version "162.0a1,2026-11-06-17-16-55"

  language "ca" do
    sha256 "cf4c40f81283fc9717c975a12429397fe6fe6f8b84302b987a977daa3dc5ed5b"
    "ca"
  end
  language "cs" do
    sha256 "c77cde8d95fe66f3b3bec2842b0fbf0ae53fe6faa95cebf00a640c5dd80af7ed"
    "cs"
  end
  language "de" do
    sha256 "02669bc4617f0f2c42045951ae43079dd175cc25a6a5c2c892086b2186d4fbdb"
    "de"
  end
  language "en-CA" do
    sha256 "d3fbb1d7650dc75bc259802c7fcb26d4c10633bca8689063dba6ea52a1947c3e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "faebe7f7362b785501a601dd70b148eac6f80209257fc8d7528d4d831914a54f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87aaa67f82cf7100d6a0b14b3a75135ae275e7e74a30140d2a0a6708dd3a150a"
    "en-US"
  end
  language "es" do
    sha256 "2243473b6e26d10706a681584b7d9e2cd5a81257f54d04c22075eafd47cdc862"
    "es-ES"
  end
  language "fr" do
    sha256 "b8ab8252c7c3ff2235a94886d03dc057a05b2347fb2f3f35d8afe11d9733e78a"
    "fr"
  end
  language "it" do
    sha256 "07acb1cff11345cb90e0eee309fac797bac48c85133a6db0d0003f2a32701db9"
    "it"
  end
  language "ja" do
    sha256 "2a71c8853d970bc2d974ba76f650a1057fa167e4a78884aaef02c5cf54885fd0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "34c755c6926f97827efa47efc6eb2414d1110b8e22bbb3739bfc4d9e292212b2"
    "ko"
  end
  language "nl" do
    sha256 "018c1872d3221872b5e51d80d328816b7f8a238a9a9909e34b62a4aa60c3878c"
    "nl"
  end
  language "pt-BR" do
    sha256 "772bbdfcd1fedc353a1dafda7125d1b5e51bcd61b903afb318ad990552ebc5b4"
    "pt-BR"
  end
  language "ru" do
    sha256 "7f8c2efc0b7f53ce9bc1f58d6bf487ee5b50a21abb75f726f72c56db2db2dc26"
    "ru"
  end
  language "uk" do
    sha256 "458a7f4959052424fa942cc69bc88a79242a7ba4eea16b8e115afd84210b7ffe"
    "uk"
  end
  language "zh-TW" do
    sha256 "03d861617560f338d171404ea9995e908e3a3fd8c49127ce5f652c625684e8ab"
    "zh-TW"
  end
  language "zh" do
    sha256 "5bb3b88ce1741cb295420a9d0ab87d4d3836b7ef18e3f8a6757b22d60690cf5c"
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
