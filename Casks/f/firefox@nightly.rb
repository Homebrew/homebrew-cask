cask "firefox@nightly" do
  version "162.0a1,2026-11-17-19-33-37"

  language "ca" do
    sha256 "ed99bfea2a1a7334925e40264f23e83dccf3bfc8de32d1ac49017022952162da"
    "ca"
  end
  language "cs" do
    sha256 "1c7b0684e52963184aa9e19495173aa9d90279403d2d91de3ed061a03e2cc02a"
    "cs"
  end
  language "de" do
    sha256 "ecc9e6cce9c1dde81b7a6795539f76d74dfec691381a4faea0d0c54b449191eb"
    "de"
  end
  language "en-CA" do
    sha256 "fd1211020a5837959abc5adb40af09fa38b005a76f52d1baa0fefa15043d251c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "094f017c0268097d07bacff5046f8b30460d0c1672c565c0fda1cd0e70d8656e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1578ad5bcdee2a34424d7b0edbe198247baa275d45c459478965e4c8a60f1535"
    "en-US"
  end
  language "es" do
    sha256 "f54a1fdc4284904a71ae023fc7df4d75f1751bd1bd3b089dabb0abd433c4e0f2"
    "es-ES"
  end
  language "fr" do
    sha256 "0de7abb7b8b9e8834caf3c4f82f4149875bcddeaec2ae69f1ec53ac8faa5ddf7"
    "fr"
  end
  language "it" do
    sha256 "2d1bc7adfa082dd83d44af40ae94011b8b61173071b08d39d8ecb2f88f174da0"
    "it"
  end
  language "ja" do
    sha256 "a739e8b79284236fb9731b7bfa75a3fc69ca8b35a4422a4f21dc231b56deecb2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f1131945ff6370afe3a421f9c039865af080acc8acb675b232d7297f7ce37632"
    "ko"
  end
  language "nl" do
    sha256 "f5ab1c73c3d0eb68c5cda2a94617c4287dad07a05923a8136044c7d939e98730"
    "nl"
  end
  language "pt-BR" do
    sha256 "504a0c909349de9847923a7f416942040bb7ff6aaec5556e1b6929212749721d"
    "pt-BR"
  end
  language "ru" do
    sha256 "5957b87ebddeeaf11745a4f837668245eb66fd8d93403fca6db6b25f9f6b9af5"
    "ru"
  end
  language "uk" do
    sha256 "fcfc896d9d926ac251072b8bbbcf867a258fc8c134233bcda02314e3086509ce"
    "uk"
  end
  language "zh-TW" do
    sha256 "299d8f647c8bc3269ac77f7ae370bc849332c3704f3a5ee084c614707d8875de"
    "zh-TW"
  end
  language "zh" do
    sha256 "98589a9c494d9fb53051b74883a3fe056f8f7ffca7226520a66222e4268bbd1a"
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
