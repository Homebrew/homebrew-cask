cask "firefox@nightly" do
  version "142.0a1,2025-07-17-09-30-54"

  language "ca" do
    sha256 "b62373833c94ef6a0e51f91831a8cdff166c3b9f25882c57e302f25b916b13b0"
    "ca"
  end
  language "cs" do
    sha256 "1eb6a5a73d658661ff04e1e237c291df0f4fca209589b5bac2be8956ce61cefd"
    "cs"
  end
  language "de" do
    sha256 "a94bd5be6c4cb6da5ae7aa23a6c58ca4a0770cc227365a10b3a45e52ca510a9b"
    "de"
  end
  language "en-CA" do
    sha256 "8bbf98839445c4e0492b0f87543af60b714db90ca26047943ac37ff5ebbd6ddf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1925d7cec4c1db0baecf3424f97ef062bfe302eed16f766cbacca288ad1008fe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7896a3ac24b5ccc5fc832002c3f884e4b278786c108300552b00297b1e326656"
    "en-US"
  end
  language "es" do
    sha256 "60604687fba422765aefa1b010a43a1879b39b25b4d26f170bdf8b6e8cd45a94"
    "es-ES"
  end
  language "fr" do
    sha256 "345fe2f255e7c3f0302afb291e8d776546eb080d11f093bb5fac913c039c58b1"
    "fr"
  end
  language "it" do
    sha256 "c60c5dd6e2d994d893f353d81a8eddf0245d157459a6365467bbdb2604131c7f"
    "it"
  end
  language "ja" do
    sha256 "f2a152d39bcfc9d2ab11d1b08360b6395897eae43b6f902c8c148b57e1ecbc93"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "84997954b0b56958701847568b727071529f172252155b06d2af94f7e5f52264"
    "ko"
  end
  language "nl" do
    sha256 "f5832b965efb583a3b37583bcb1c81d88dc1e7d1f8e5a71c4358a27e56462d4f"
    "nl"
  end
  language "pt-BR" do
    sha256 "1bcef6d858ab78623e6a1190aa07a1dcffa3db1ff3ec230a377a2dda90ec09f6"
    "pt-BR"
  end
  language "ru" do
    sha256 "2dec0dd42070041e894247276262f08492f40f0c19b0a9b51a33d2dd884a833d"
    "ru"
  end
  language "uk" do
    sha256 "9358c2ac11f3e58f4999876f0d69c1e93a9f2bc1a54df29f3764db4554c3f374"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f8957db20d1bf32fa61b55e36d15e7399250eeed205556a3186f86553301b2b"
    "zh-TW"
  end
  language "zh" do
    sha256 "3cefae9214bfcddeea13386da1683e95b8aaf01da5ebcdfaeb42c05c1a00cc40"
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
