cask "firefox@nightly" do
  version "141.0a1,2025-05-27-16-42-39"

  language "ca" do
    sha256 "c4bc68a7d0486ddf6d7350216e4a5b4a0559b94a8561a0d58792b1bd5d6318b7"
    "ca"
  end
  language "cs" do
    sha256 "82eb51173a83bba1ca12e4de55b4afdd3ac837edcd9bf92176f6d21a7b081533"
    "cs"
  end
  language "de" do
    sha256 "5fc2d9ff6d7c2bbdcea6a96e1141f2bd117dd443d7a7d4b407cc7a5b2ce010f3"
    "de"
  end
  language "en-CA" do
    sha256 "2523f79c527a824e712524fd262fe47482ca5350c1f2f3e2d08809e91db0becf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d93a739d9e0b38195d6dfe29cd74bc94daa3a8e97e5d44f16ef27f1fa34fbadf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ed92a7eb130992d8df9453c6c0e8a829a3ec60f9d7db85183c68589efc5cf956"
    "en-US"
  end
  language "es" do
    sha256 "5085077b790a4a4b9d1b04007921951aff28837499e5f7d46460ab228f12d4e1"
    "es-ES"
  end
  language "fr" do
    sha256 "3fea75ae34a5c9a187b601b62e90d34b950098d4f4553cbf69ffc4d03063fd0c"
    "fr"
  end
  language "it" do
    sha256 "43ea8f2384b73278172f6c8fa07726b18b9d4eda56f888161a3c4befc76b7c4a"
    "it"
  end
  language "ja" do
    sha256 "e94efef5c1f4c0ce9eb4b8720aa924e72d7dc1164aeb4febc47d09599272cdf1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "add4bbf86d06d01415e23f103faa24bb66da823740f97155dc4deb6481821686"
    "ko"
  end
  language "nl" do
    sha256 "d7cc576b66fc2b76fde8b90dbd2e46a1275aa562a060ea79d79c20d56e540885"
    "nl"
  end
  language "pt-BR" do
    sha256 "0a65f934b5d22202700402046c03d303ab5122e15488ed9b0e187a25d9fa528f"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b1d04582bdd43f1eca53a2f5468cda340a2d004e36596f3b4885e32be1fa455"
    "ru"
  end
  language "uk" do
    sha256 "c2eba8e95de8ea7fa6e40a383a192af9769a57438ab2db9c0c751d5afe2813bc"
    "uk"
  end
  language "zh-TW" do
    sha256 "5cf97ed772a78d3c3bbf984fbf2dcd3fe4d23b34ed1bf3c85697a222efcf06f0"
    "zh-TW"
  end
  language "zh" do
    sha256 "9375291a3907aa7581c80db4cfd33b90f13b54bb45fbfd69211541a248e4fc46"
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
