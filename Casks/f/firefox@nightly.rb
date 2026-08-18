cask "firefox@nightly" do
  version "156.0a1,2026-08-17-21-08-08"

  language "ca" do
    sha256 "ae657a5c1419d2e0dad11b4b6a7cc0fc95e3a468c79e0bf9e47262a2dc896836"
    "ca"
  end
  language "cs" do
    sha256 "7e5d69fa78c43da35615431b48da9d2c53702ea7f103710d391abe2ca616ab90"
    "cs"
  end
  language "de" do
    sha256 "4ff9fcc483e60b0817a73573f7eebc147e3a5ba546f63293ab91be798734b6a8"
    "de"
  end
  language "en-CA" do
    sha256 "59baffe1647de19b1dfd7ef3d4b2a81fc5ead7dc35de651fa071b7299093cb38"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ea200fe2a99a276c93b8d77bed7ee17a1364dfeb136702bb0c032ab15d19483b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "24305f7a0cbe7f220af556b91304f365770f19309ddf2c85aa56ac6241ae3556"
    "en-US"
  end
  language "es" do
    sha256 "8b83d1709bf4692f8073a43d54ed8850337202bad063622a7a4843f574bb09d5"
    "es-ES"
  end
  language "fr" do
    sha256 "1437e5a6d79c3eb9b48e05311656f24e6ea4ddec03796c40b8a1fa93d3f0589c"
    "fr"
  end
  language "it" do
    sha256 "cf94b41e1d8c4369520db24ce1c6294cc9d0397af126e03a82fce1df6dfb6798"
    "it"
  end
  language "ja" do
    sha256 "3ea183525cd994cc3e1ddd7806f29c2f75b3b8518a7b730e96246e1eacd46fda"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ec0ac05da131576dc089b769c60f9063df01cc521251b8fb073b7ea2cdb20f0b"
    "ko"
  end
  language "nl" do
    sha256 "f819a0cb2878f13a55c74f54403d93eda9209414d041b1b5af1e6821ce4f1907"
    "nl"
  end
  language "pt-BR" do
    sha256 "d9d45cb31c6e27bc1a20beeb68b6bb1448718d9cd4b498db3d39afa1579cb098"
    "pt-BR"
  end
  language "ru" do
    sha256 "2a6b9d2d5c3431d74f09fff26b3ffa96d598920be55aefea34887ab89e840b46"
    "ru"
  end
  language "uk" do
    sha256 "d42f54842f4a8a02d3fa97a8fd7e8418e18d5b4e8e30202d5c8d03b42c4e9d74"
    "uk"
  end
  language "zh-TW" do
    sha256 "e812468f91872d39a42cf39cf64f04744cd451b7b8278e7a7124154b5ba59e89"
    "zh-TW"
  end
  language "zh" do
    sha256 "218d768154f35748126dac6f4cb3da48475e5e704fd2ef7e1b1e9436083a0f74"
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
