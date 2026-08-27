cask "firefox@nightly" do
  version "156.0a1,2026-08-26-20-55-48"

  language "ca" do
    sha256 "a409b6c5589e86c65b467ed90516cbce1fb3aeb1442c84699949c88a867cbf1a"
    "ca"
  end
  language "cs" do
    sha256 "b9d1079700ae8986d175e4a9a378cf48e223527c1192f53f6db455aa85d535a9"
    "cs"
  end
  language "de" do
    sha256 "904e2ac4b69e6ecf27da29bba4463f5ecc18ad4848cd4206de361d98fa5cb90f"
    "de"
  end
  language "en-CA" do
    sha256 "da286cd0ccfa6d1771fb8955c7786c93ab2a9915de8be1994e4685903e25aed8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d3150744da2f3d2a041a08105939813835eb7be49308b4490f326df1d3c91ad0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fd02e96bb0c77b209e879a39af66f1764af10c75791d672a8adf94f28501dc17"
    "en-US"
  end
  language "es" do
    sha256 "e07d95686609b3b8a14ab2faca7428b8bd619074acf3692d2bf2dfe97d093d37"
    "es-ES"
  end
  language "fr" do
    sha256 "162d2e96de09f019625009858cad7e26e28cc928350f4fbeee9e514cc1180430"
    "fr"
  end
  language "it" do
    sha256 "ae42f1bd42aea0aa25fe78b0507e02c9d6f04b8030e7ff87387e4277d29c93a4"
    "it"
  end
  language "ja" do
    sha256 "8f9f1ddf3985da13605617bf4440d082e346727268e05c861b25452403c108c5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5ed34c9fdc925aae36175ee4695f3ac6c612ae47ae01dd2a3645945bc0d4374a"
    "ko"
  end
  language "nl" do
    sha256 "8a8e14f0c875552828b25417975758606e85f188990d0aa6043f9125aea3ddee"
    "nl"
  end
  language "pt-BR" do
    sha256 "7cce8fab870426719af7a0140449475fe93ff4a4541e2f29c09e8c56407ef3a9"
    "pt-BR"
  end
  language "ru" do
    sha256 "a1b9a081064faa1559fb3c404ab0e32a4b3ca48339e293f55837624a7eca39f4"
    "ru"
  end
  language "uk" do
    sha256 "b5ce461ade0cd4f8addebe034eea3d17be133b6394d68fc21f5a2b0c5617fe4c"
    "uk"
  end
  language "zh-TW" do
    sha256 "e083d2f49e44ef4daabf3ddf37423db715cade7aba5f0e7ae351ef2b00b2fef1"
    "zh-TW"
  end
  language "zh" do
    sha256 "4fe2f8ac3f7ff2b368b08a4dc8d461191f1f084a022d21057297db5d85a80e1a"
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
