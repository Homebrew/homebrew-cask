cask "firefox@nightly" do
  version "144.0a1,2025-09-13-09-23-12"

  language "ca" do
    sha256 "96ac04a96019ceb02bbb175b75c3ae5cfe37a8504a408dc8ec668496177276a7"
    "ca"
  end
  language "cs" do
    sha256 "2aed1f73881145968d2043a7fe90472bfc0509615aebadf0310e08292283c236"
    "cs"
  end
  language "de" do
    sha256 "e71aebc3a0badb4fc646171e60e4d5895106d99f0ba0488f1e6d2e61925e3791"
    "de"
  end
  language "en-CA" do
    sha256 "dba3994a8625ea2a766bedd7ec055344c2fb4b3513e23ab270f39f64e87eb77b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ed10e92897b6e11232f8559ec7e858463e4211edc4baaae7a543f4ab44c5a42b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "923a012c587a1f1b346b37857d15d66fbc38c52b0b053165db3081e72cb82687"
    "en-US"
  end
  language "es" do
    sha256 "f292b19b5fc359eb7b524d87f97a477bccd11356e98083a67b38f4688b43bddb"
    "es-ES"
  end
  language "fr" do
    sha256 "8ea242a546e4bd4cc02a9a190d4522928dd2b29c430c65807cd20163a01bd894"
    "fr"
  end
  language "it" do
    sha256 "a201ac259d2fdb4a8912b41875258873d1cc5755c64a5aeba9d4cd2cc19a002e"
    "it"
  end
  language "ja" do
    sha256 "8e66ec430b125af7606db21aaf46f4d90a16b896d87d730dc5a23a11729d04cf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "00ed6d30b9ec9e0b789540e5f2363bda1e1d1bfa34a03aaefe81479a793641a3"
    "ko"
  end
  language "nl" do
    sha256 "4d61fd70c1c8fca59efb76475c34332432ba3455eed3ddd9e4e239e260d64b4f"
    "nl"
  end
  language "pt-BR" do
    sha256 "8f204329006f7f61386ef2a1ac0f4c3be904ab2f970325a92d6468d53d628fa4"
    "pt-BR"
  end
  language "ru" do
    sha256 "1571323c3ce62bb7b345022849452f68aed43538acdaa27aceea26d8582c8a1f"
    "ru"
  end
  language "uk" do
    sha256 "72bbead735078112920cc55917f9b0fbd98123b565ee3b26faba7a9d60323bb5"
    "uk"
  end
  language "zh-TW" do
    sha256 "4dca297e29249685939ea8773c137c43c8ce039ba5c3979b752451b7ff1713d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "7419390b871dbd6bfa511981f03fe5b30d9c91279309f7edf087d279a7faa049"
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
