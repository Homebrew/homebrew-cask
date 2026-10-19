cask "firefox@nightly" do
  version "160.0a1,2026-10-19-07-34-00"

  language "ca" do
    sha256 "de2d6b82543f17f8c3c63738cfe5140edba334d4fb521bd78bd1fba1f25c2ee6"
    "ca"
  end
  language "cs" do
    sha256 "7d838dfffc9702c3e1298caaabcaff0ff5cd0b99809b63de892533b265899334"
    "cs"
  end
  language "de" do
    sha256 "712098dda8b22a0b2549cdeb2fad9e0d89eca8c0730d316d90b2e3bd368e6b22"
    "de"
  end
  language "en-CA" do
    sha256 "75a00764e0e4b830e43f5e19f77ce07c746f6980dafc41cfe352bab3facce483"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8397aa551bf32fa67a21063a0638a2188e1736676224dfe9c42c2096a944d7f3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b817cfe0c5da5d973134f8ea12279892ca8448c43c7d4536918c8e33587bf12e"
    "en-US"
  end
  language "es" do
    sha256 "c4833a5b0be906a918a872c741659cd09b2d746048db561d918a6a3c5514a41b"
    "es-ES"
  end
  language "fr" do
    sha256 "fa09fef5c7595dfff23a0e8f4bab8cc95b13a0a40ce15ba4b2d05e6ebe5f72c1"
    "fr"
  end
  language "it" do
    sha256 "f412b63446a22cbddfb370c3c2cc5b11b47a52a60e36261c4fe15afeb021665a"
    "it"
  end
  language "ja" do
    sha256 "cb18d43a1778b47a39f5222bcb056ac46ed855f73714d9b3b0fbe62033154759"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ce4693a26c6eb8890da27e5e0ab79155bc1e2d2b1046abb0115d941459819a62"
    "ko"
  end
  language "nl" do
    sha256 "b0b43de74488cff694c8ef3b1516c9485e801dd051aeafdff88efd7bf1f6ebfe"
    "nl"
  end
  language "pt-BR" do
    sha256 "307e5b663a892960bfa9c50ce24d2de8dd1beb9c276c9ed272d0e43cd64e2ef9"
    "pt-BR"
  end
  language "ru" do
    sha256 "7f48fa7b573a829592d303a60613a9eb2015fb3eaad5dc7d6d62266fa20b8df0"
    "ru"
  end
  language "uk" do
    sha256 "641effea6fbe42e48010adff6557a30781726a381f863490ab41195bb0fab1b3"
    "uk"
  end
  language "zh-TW" do
    sha256 "ebe7afc639a004c44c78e00a6468451741c0ee73715daf69493fcaf0f2205591"
    "zh-TW"
  end
  language "zh" do
    sha256 "79c51e1d8da2200d26ae174026fb9b36724e81e0fe753a18f3734da382a40ad5"
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
