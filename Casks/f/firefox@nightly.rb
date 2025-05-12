cask "firefox@nightly" do
  version "140.0a1,2025-05-11-20-54-30"

  language "ca" do
    sha256 "ea8b9baa5cccc8242cdd0c52c7d0e32d40b05933a07a15506e932615972bd605"
    "ca"
  end
  language "cs" do
    sha256 "a9d7bf0e6813350394762e0b4a319148780852fd5becbba58d3c08e80fd3fd71"
    "cs"
  end
  language "de" do
    sha256 "f663dbef28fed3190232249bb710a9ff98f631faa14e962c7528ab3f5beca929"
    "de"
  end
  language "en-CA" do
    sha256 "5eb04c42b5baaf1d98e1b247054687c293af362787c6cfe1b88814a20c6ee3e4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "482f93b83936c4450ab0678376f4ece79f67c74a4b12023b473f3652ccf5962e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "321f0343f2c15cc849e214f684a7dfab4ca164c25a19a518edcd7be6b7f942f8"
    "en-US"
  end
  language "es" do
    sha256 "f404a0710ea39634626d81a1d897ae9da7c16bee27b926428779e126d5f3c3b7"
    "es-ES"
  end
  language "fr" do
    sha256 "8e7bffa6ed0aef108879eafcbd0dacff97ca6cf15de0e0d644d915cb98202c84"
    "fr"
  end
  language "it" do
    sha256 "92f7d5a9d9c272ab709532c6383ad027804c278d744a7b1a7b1b3f928642e3e2"
    "it"
  end
  language "ja" do
    sha256 "af2157e740131269fcbdfceb3d3bc95e3eb0f6b6178886158051e06d446502dd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1f135a875938b1a2c1de794f1145bca29f4f584e879f7516796cc5fa31ed3be7"
    "ko"
  end
  language "nl" do
    sha256 "5f67399fa181a485654a6c46650a2eca16c8573faf12eda5c9d777da6325d939"
    "nl"
  end
  language "pt-BR" do
    sha256 "59ff4d9205e57b5db40247b61dbcede15cf660b42a3c748822e65816b794a6a1"
    "pt-BR"
  end
  language "ru" do
    sha256 "42bf18cce03b947e761e6de31509c4673acd903e9c670623e5bf0ab0e5bf7c6e"
    "ru"
  end
  language "uk" do
    sha256 "8a976da795d558261de45bea3878d97f8ddd0ff445e8c6427b9488cb749fc51d"
    "uk"
  end
  language "zh-TW" do
    sha256 "267f9e96ee52da521772706b00ed612d6b65c2587fc897c441ae22a14838091f"
    "zh-TW"
  end
  language "zh" do
    sha256 "05800c15837f79e76a106cd10b02ed83736e4da86cb2cddd95212635a3626f23"
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
