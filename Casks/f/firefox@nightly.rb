cask "firefox@nightly" do
  version "146.0a1,2025-10-14-09-55-35"

  language "ca" do
    sha256 "63f34eb66247ba40cb53dd7db451eef0421dd2a843e2f24acdfd2340ea4f0090"
    "ca"
  end
  language "cs" do
    sha256 "e08b0d645d7e0e7f0eb3a4b805fd3be0e23306b56c3af8d58e9f2c251d92b7a8"
    "cs"
  end
  language "de" do
    sha256 "7a7787aab29a7ac8f7c9d98aa6ac9f75ed628b2d2cfa6097990ee4f5d871a889"
    "de"
  end
  language "en-CA" do
    sha256 "eb1743245d112f9849a35bd4ec99643501d49c18788dccef24031e70c2953c38"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6a2d71ede7ab6389c66ee9cac12a60a0d711791773b50c7433e1eff826f7246e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c6ace3b03a71c51457bf7233ab70822150d35f9d89177daaaa517528f3b1c785"
    "en-US"
  end
  language "es" do
    sha256 "29ed7110360078289ac533d1915f9405f88ce76c16edf949af5106c76ba6c57a"
    "es-ES"
  end
  language "fr" do
    sha256 "31b99fce29c06fe2ecb153f4cf940aee7b249af24ce3ceb39b4a697a48f2ee3f"
    "fr"
  end
  language "it" do
    sha256 "f7819f8b227020b9f38e618bd459e2f3c5038624d1e710642a0b0fc84fbef078"
    "it"
  end
  language "ja" do
    sha256 "fcbf6355b8be298966e5d86c2748f2e6de3714a24efda764c2a09571eb5324c1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "052ab95769ba49515ccde30f55b70274a9858a4256841a3ea10eeab6b0fe21ed"
    "ko"
  end
  language "nl" do
    sha256 "2bd3b97aa453a9f7a2379d281d11a0b43e5b4b7d6f775ecda11a3c0faefc9844"
    "nl"
  end
  language "pt-BR" do
    sha256 "aebbce232c78d53ccccf3e6eaa510a409b1ec250b27604d13aa13680b0e35821"
    "pt-BR"
  end
  language "ru" do
    sha256 "bf1b969583ee8af19d038f98ff16d1b12c4b90b000fe72e8ea107120e5d4601d"
    "ru"
  end
  language "uk" do
    sha256 "05b40d250e7d798ebde0256c202817a94c343d096ff2a4cbf9322cea6bf0eff6"
    "uk"
  end
  language "zh-TW" do
    sha256 "7c7e5256b9fe3e650bbb7557081ce58e2ff1ddbb32b6da25da5a84f863899e35"
    "zh-TW"
  end
  language "zh" do
    sha256 "457f3c3cf1d8d5517a835badb099f353ccfd723771c4e01911008d1e65b91167"
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
