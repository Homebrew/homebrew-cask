cask "firefox@nightly" do
  version "152.0a1,2026-05-14-09-18-37"

  language "ca" do
    sha256 "8181f28e42cd3e9e4baf9c4502c8c49b34e55f3819b60201fc0ce6a70eea80b4"
    "ca"
  end
  language "cs" do
    sha256 "07674d58018f63f3b25c56cfadf71108049c5f9045043a48e402bd222ee3a553"
    "cs"
  end
  language "de" do
    sha256 "a90f8fd3e3591a94a3c73648c854f1f408af6ead6f71c4a87aed56d42becce9a"
    "de"
  end
  language "en-CA" do
    sha256 "1304b88cf48dabbf163849231a259d255b9e4684f34eeb491b53e7344e0c8b22"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7fe6733e98f67b8628e57422463c6afa08119e13587c0a6a5310018216fea347"
    "en-GB"
  end
  language "en", default: true do
    sha256 "038d8cb948e5e8af3b603dd621e4975afd365e2ef800f04211e003882e0d407f"
    "en-US"
  end
  language "es" do
    sha256 "dcdda413b4c34de4ef1cfe7f652dfda64109bbb5e9d4632be03b6d12cd2a5ed5"
    "es-ES"
  end
  language "fr" do
    sha256 "9eb8762a3b3be99106e0941d829cdf437c5f537e598297b33039bb480a22430f"
    "fr"
  end
  language "it" do
    sha256 "617321415ff08f6a8283cb4ef83397e870fb19ba15b75550917b78eec9e32939"
    "it"
  end
  language "ja" do
    sha256 "ae88b93a34d83003be8d5cc7ec93fa3446354de23b46696737e8d98e2172b89d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4c1260069d5881c932fe755352b361837de32dee0805484623bf2991651ec32e"
    "ko"
  end
  language "nl" do
    sha256 "444ee5ea271ae3b29b811661fffcc95a0710fd5337db42bfc03c7fda042c1b70"
    "nl"
  end
  language "pt-BR" do
    sha256 "357b845988186320890d61139ba1683b0648645e0a52d57c09bc828951f6fafe"
    "pt-BR"
  end
  language "ru" do
    sha256 "a0bb8322c5c6d7fc69d7e40cc5f62c0232b82e857fbd11d4e260c3cb82a0dbdb"
    "ru"
  end
  language "uk" do
    sha256 "7a2ec8a4124266fad1ff98d56839f15bd62cdd75bea5a979156c662bee01bbe8"
    "uk"
  end
  language "zh-TW" do
    sha256 "8f796895c14098a300065d21f47092e07c5cc0450b4031984d1b9f577c795b3d"
    "zh-TW"
  end
  language "zh" do
    sha256 "37791372bf2085040cd16d44852796df84429f682d2c894bfe114d1f06fab0e2"
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
