cask "firefox@nightly" do
  version "140.0a1,2025-05-24-09-12-54"

  language "ca" do
    sha256 "ed52909cbb954fc5b7bad588d05bf2fa24c6eae77915769262aab72c75597d0e"
    "ca"
  end
  language "cs" do
    sha256 "21617231567153d0197a2d24b41ba3d73d812af566f4b8c31b71f707dc65545c"
    "cs"
  end
  language "de" do
    sha256 "f615ba8966e7af778e81528e9caa5851032fee69b2adbd90ae23057c4850d562"
    "de"
  end
  language "en-CA" do
    sha256 "f1e6d09123db34f603b03b68bdc55ff6688f0971fca12887f7cfe216b7d4d867"
    "en-CA"
  end
  language "en-GB" do
    sha256 "81bc8cb543b24ad56e463318c520ce13e70ed532f21cf1a2e9f57ec8c22182e3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da36215d3c3ad241722ef405a7ff67693b6cd92bae23bc7a893c9a7dca5514c2"
    "en-US"
  end
  language "es" do
    sha256 "3475cea30daa7b4406db43fcdf6440cb0e13bf8853c0279c9d178553f18033b2"
    "es-ES"
  end
  language "fr" do
    sha256 "42d482c752e4b6366fdea3810e557109c933cbfe120bc9537346c015ee744e2f"
    "fr"
  end
  language "it" do
    sha256 "7889d4685efb5bb27ff3d35f35c1a554cbd70aa1794054afb60de3ca82de99d4"
    "it"
  end
  language "ja" do
    sha256 "4d323f89188878296c3b3650de114672da4076454d5f70269e74f4b642b26799"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bf85394d12aea57a388df9d980ce6d34fcbe2b8ad25e6bf1bfdc5c74fb4f2571"
    "ko"
  end
  language "nl" do
    sha256 "6f8519c2a68b27531ed5068c9f5745ad974e1e31409d0eb7b9912252c428ee4e"
    "nl"
  end
  language "pt-BR" do
    sha256 "2167c7289d794fce8b33b1a7cdba960075332593bdeb2740901f7d99521a6fe1"
    "pt-BR"
  end
  language "ru" do
    sha256 "6613248f2a8ffa48d6299b15316f36de22ab4d467c8319231d7075edb4dab478"
    "ru"
  end
  language "uk" do
    sha256 "17fbc38b8b34e45af325e530a1bcac322e953b31dd829eeea9803d419ca680ae"
    "uk"
  end
  language "zh-TW" do
    sha256 "5db065653f7c69abeec8892242860e95655d53fe21b3ad82bdfd6e19d1d02c8b"
    "zh-TW"
  end
  language "zh" do
    sha256 "eabc209a605a7c162ebde5dcba120d211617b92164c951bcd37fcf52d2f223ac"
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
