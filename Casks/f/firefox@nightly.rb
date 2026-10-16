cask "firefox@nightly" do
  version "160.0a1,2026-10-16-09-42-57"

  language "ca" do
    sha256 "2cb70ed190c01d94665e86d77c6694fafca7ec343680076efc4eade3e10d2ec3"
    "ca"
  end
  language "cs" do
    sha256 "6260163eb5743c52dbb664e453ad2e72037565ef44d7c9e3cb9f29ac2e64b0b9"
    "cs"
  end
  language "de" do
    sha256 "7348f06ccd5992b3efed550a31eab3d8aeec10994b86d284f9154e9c86f61060"
    "de"
  end
  language "en-CA" do
    sha256 "c74cc44011f33edaa5877f397c0fe0e390551c12834e2aa77d745f1d3b9ac19a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "db263ea0a48b4644983056515c387d4495cd3170ffce630932e463151adda01e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0f12a67b701c4eb6319337b9f9389601d0fbe1780326198d1686d84ed356cf51"
    "en-US"
  end
  language "es" do
    sha256 "960e87852c51208be6a05eff3a9ebb6616d5e77bb21acb1c4a70b9a76a1fe142"
    "es-ES"
  end
  language "fr" do
    sha256 "ca00eab5ab8040b58547b73e0bc27709258679b5fd9d0d1415220af7a645ee93"
    "fr"
  end
  language "it" do
    sha256 "0e44bb0acf6847866a219aae3557324dad0df9dac689abe5feced74fc5749db2"
    "it"
  end
  language "ja" do
    sha256 "6618befdd6a0b95e994df6e73ea3c3c857aec3fa5333c98fb59368b720971c67"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1b09fa4528d8e6e1d9601b0d9b45051941fe0dccc9e834a7da0a76b8e1ec3bc4"
    "ko"
  end
  language "nl" do
    sha256 "64e6ec54e0370764378a6b3c8f572e82ce4b6d137c4131b77324c04d44b7fd64"
    "nl"
  end
  language "pt-BR" do
    sha256 "04fdfd5c71a7a5a30a3e860aa5f019bd3bc4d2eba547e52b239d8e258580e10c"
    "pt-BR"
  end
  language "ru" do
    sha256 "ab18b2e1cfc72913e783cb0792842bb29d9c3738ccbb8228a8bc31cf7abc3de0"
    "ru"
  end
  language "uk" do
    sha256 "dd4de0cc38f9b0df35f281e5c6a8d9c8a18a44b5a00b62ba1c941ca1a60b769c"
    "uk"
  end
  language "zh-TW" do
    sha256 "f2b53eb961baceba5c387e1070ddbcee75139762683ce96b6fec689d31d63590"
    "zh-TW"
  end
  language "zh" do
    sha256 "345a9149f984c9a7bf02ff6604393d5cbc072869a1a7fcf53aa1d76842816b7b"
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
