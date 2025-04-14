cask "firefox@nightly" do
  version "139.0a1,2025-04-13-21-07-18"

  language "ca" do
    sha256 "b75a32e9c36b63b39e7967796f6456aefef860efa19215f0d3a4d4b2d1cf2471"
    "ca"
  end
  language "cs" do
    sha256 "da0c3778c968dee7464420637492ffba97256be51e47ede462597b2cea820128"
    "cs"
  end
  language "de" do
    sha256 "d134ada349fab50b27ef1c5c6911b443548a745ce21c0a27a983e044af23a80f"
    "de"
  end
  language "en-CA" do
    sha256 "1df92ae8e688b7082b116a4f7667cd9ac5a4cc8c79539699677a010835a60910"
    "en-CA"
  end
  language "en-GB" do
    sha256 "696ae8aec626f0659f5aafbe3cc3d78e8e14879397f72ef8c70a606f58ef9b39"
    "en-GB"
  end
  language "en", default: true do
    sha256 "35b0b52a8b92f41e06d717179cc04ecb9e67ee07536c8a9d6e4f1611a56eea24"
    "en-US"
  end
  language "es" do
    sha256 "074ec9b031ce7da4c131daff119d0f54e4c9af72345559863b71b0510adbd2d0"
    "es-ES"
  end
  language "fr" do
    sha256 "49e928acacf5409c864fbdb4cf9a159118f3170555723cbe99a3fc966d42a536"
    "fr"
  end
  language "it" do
    sha256 "c9056a5aca9146716544c148071c513205d24839d854c0addfbb972cbe4f8a33"
    "it"
  end
  language "ja" do
    sha256 "2d5f4ab176feb5a1c09689261b8a17b1361234826566b587f9b9185e5e5f1fed"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c1331bf1583677f2e7ecb61684ceae35d5901c677ee10c86b17ce2d7583bce0d"
    "ko"
  end
  language "nl" do
    sha256 "3e6332833d43f6d9352eda769b926fe52558a8b77a1a528eb09d933ad0636262"
    "nl"
  end
  language "pt-BR" do
    sha256 "217296234135014a30d1fb80792d45841cc7702dc7e131069694dc632af82978"
    "pt-BR"
  end
  language "ru" do
    sha256 "28e1c5830db77f333af4ef19c218f36cd92ef96d44dde385162259aaa14019b4"
    "ru"
  end
  language "uk" do
    sha256 "16e7cf6fbb7c04ae26686bd78f117eb9ec2601d3c5ec13d7d252ff5d08d0a851"
    "uk"
  end
  language "zh-TW" do
    sha256 "c2bcc235293d0c7daa5a0e36f081c9d16549c8754f0b8263d3da32d2f96ca344"
    "zh-TW"
  end
  language "zh" do
    sha256 "f4c604079a7a75c31e163161bd8f31f41b449d639a6d9e6d5d3e22962567e076"
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
