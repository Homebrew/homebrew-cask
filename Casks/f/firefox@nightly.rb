cask "firefox@nightly" do
  version "146.0a1,2025-11-01-16-43-25"

  language "ca" do
    sha256 "49c4048aea9c6406803734896160e5d1fb878b2e3862d101cf8f0c8e24b76742"
    "ca"
  end
  language "cs" do
    sha256 "deabb4e6d263ee49e10f8c6d47f63e2b61cf6b3e6a82208633aef6dd7c2f5904"
    "cs"
  end
  language "de" do
    sha256 "f69809410e8894730345988802c591f9e44fa538c94914429c8ce57c19af9ea0"
    "de"
  end
  language "en-CA" do
    sha256 "39c1fb6b05f0afcdb70e3b9d0fe454df4e64cd95a0cf08ecbc18128ea43b2210"
    "en-CA"
  end
  language "en-GB" do
    sha256 "df63dfd995f9d0647c3abd5c5dccde438eb9df18710e37489baa0d5defc18944"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4365566249a0c2ea56ab952964f7b27797f61e4069f78393770e57fbba9fef7"
    "en-US"
  end
  language "es" do
    sha256 "03cc5852eeec408db57994ca7274b8a68a3a5380e5eedfd6b5e11a49ef190216"
    "es-ES"
  end
  language "fr" do
    sha256 "8938c9ecc0cba6ecec8a1900be6e3ec46248790eda789552029f8469366a398e"
    "fr"
  end
  language "it" do
    sha256 "e7dc16e25d810d12079534b7eda9e763d7929eab33b358c9c678b123c6e143f9"
    "it"
  end
  language "ja" do
    sha256 "567939053eb41e07fa80ccea6c217eedbd092cfa3e10799811e3624b8758e5b0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8c746316d4535653830be89bf0a481b20b753d6aaf19721cb32bfe76107f3505"
    "ko"
  end
  language "nl" do
    sha256 "02fcf69e26ea4f94949aacdc9f4e85c8121765b702bbbbf9cf080ee92e7c7fd2"
    "nl"
  end
  language "pt-BR" do
    sha256 "592f4cdd26f578ba5cfc6342b8825b29098e0f53ec3ada5c9ee117faadaf6048"
    "pt-BR"
  end
  language "ru" do
    sha256 "2bdec68f2f89ef7f4d36cead46c7f874c3295d258375a681c8f3b227649e6944"
    "ru"
  end
  language "uk" do
    sha256 "ec9bfdacd876b14c6a9189ae1ded1dcf92de52988262bf64c1529622fead7944"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a57c0a24a7ce61043ae659bcc6e230ba85d5d739470d9c9349b679330165d93"
    "zh-TW"
  end
  language "zh" do
    sha256 "98aa06018efc34cbd35527df6c63dc7212c0781f4ad712a2ba7c26570f8408f2"
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
