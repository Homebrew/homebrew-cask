cask "firefox@nightly" do
  version "148.0a1,2025-12-17-21-43-41"

  language "ca" do
    sha256 "67b24a81fba3548edf1fbf0298172b6dc90b6bb72ddd320c97b98caf690178ce"
    "ca"
  end
  language "cs" do
    sha256 "0a01be5859d8628c54cd273c77ff36e0d9c467be55a4f02b978369df70c5b225"
    "cs"
  end
  language "de" do
    sha256 "04b04a0b4e5f83f911b8cce95376f92b46751ef19def26a59c15fb36cd95b9c2"
    "de"
  end
  language "en-CA" do
    sha256 "6fa73da3017fcfbfc0cecc28d7a75c4678800cb50e047d42d37c0aee55751679"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ebf8ce4e062fcc817fee8fb9570c1a28093842a5e87034fd6c9918d0f5db7c7e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "53a9cc44b62f05a9bae8a6f8e48698dfcd8d44f364d2c505ce2f6939fbd6dd65"
    "en-US"
  end
  language "es" do
    sha256 "8dee2ca55fd88171c77d830c155f05e055b80b606339e69dd50a628a937f1035"
    "es-ES"
  end
  language "fr" do
    sha256 "c9de71579562122f6809a1c1d72d25d7e3e824d9e620fb88c36aae5a253d5129"
    "fr"
  end
  language "it" do
    sha256 "d4bbe1599ead26bbb627e3fae19891927dfa3b22ff3bba0f678d1b502b57dcce"
    "it"
  end
  language "ja" do
    sha256 "396806a71107b347e79503e0ed499e854efb0ca0bc2b5f6b169966ebc7064c8e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "27aa04d9eab2dbd177c6a0f40a8754104ee9f92e97d003a3bd56ae4a3608f4ed"
    "ko"
  end
  language "nl" do
    sha256 "c076ad1a573b9c73597833a52bd880363aadf0ac73665c20e942cebd32be866c"
    "nl"
  end
  language "pt-BR" do
    sha256 "e43c16037ebc7326ced7138aa21f6ad7852b0f14439c0b5554a790be4a19506f"
    "pt-BR"
  end
  language "ru" do
    sha256 "f41f98121cbfa8546be64d9a85f29be1cc63c06cc7c4adf3be31bc83d42ce9fc"
    "ru"
  end
  language "uk" do
    sha256 "118d7e86c7b5078eba5926d047429e6e741caad3aa650024ebc038e65f9c1f60"
    "uk"
  end
  language "zh-TW" do
    sha256 "265639d435ea0b94227bab0294ffa84cf39c33e7ff645acf94fdd86db0950524"
    "zh-TW"
  end
  language "zh" do
    sha256 "3957eb8f04eb5996b8e87b881d87077869ecdbe99c0dd1c86d52c7e514cce77e"
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
