cask "firefox@nightly" do
  version "146.0a1,2025-10-22-21-16-17"

  language "ca" do
    sha256 "a87e691332c16c3a36660f57463708269444ab9dfdc0f16d65be791a8b1458f9"
    "ca"
  end
  language "cs" do
    sha256 "1f1840f800a848372cb13910377bd93300858e55eb6df5b90a9ab15c61ae3622"
    "cs"
  end
  language "de" do
    sha256 "3a700ac53e3e7d5fcde7217bd05c14f6e8ccc39ad22fdf4fcbece3c9c689fcd9"
    "de"
  end
  language "en-CA" do
    sha256 "df15dc1baba74672e85ea75ed5d71806d76b2a3e6a1effd65fb3f397a9822b07"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5f7f11ce94f513682b0d399af0c7c7595145b9b926faecbfa96162cdc91c0e49"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4589750f66cb7ba5f34b4d3ad8d6ea882b4de3e7ee61bbe9b4ed4953126572c4"
    "en-US"
  end
  language "es" do
    sha256 "a920897e344744b2d8be06e61d82929b70ee4f64318d0e694478ae1f4aa1018e"
    "es-ES"
  end
  language "fr" do
    sha256 "c38d14336992f4bf9160011068396fc9c4679c0ca4197492dbbbec965fa602ce"
    "fr"
  end
  language "it" do
    sha256 "16e7591294aae0dd0829a469ea611a167d4c7839d7ef2d975a2e5cfad73326eb"
    "it"
  end
  language "ja" do
    sha256 "67e1b455cd4e714414d0d37f0db3b1eede9bd5c7474e1503e32470a16426bbaf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f80500c8eaf3c100fed8fc625d0366cf55bdc1d61cd0244329510812458b92bd"
    "ko"
  end
  language "nl" do
    sha256 "b40e52498998134bd849eb471988975c694c8c3fd4b782f245154a914928866e"
    "nl"
  end
  language "pt-BR" do
    sha256 "a03f03f71015f60b1557483242f945e6be6b9e67fad6a695357c3d8595bb3f82"
    "pt-BR"
  end
  language "ru" do
    sha256 "283c40b6389bcc72b8f0cdadbfeb2b96762e168b38502f01eadab3769fe72e2a"
    "ru"
  end
  language "uk" do
    sha256 "0f4b294c3bf25d428f74d6a21da5ad0508fd61af4059195f37a0593d93c44688"
    "uk"
  end
  language "zh-TW" do
    sha256 "0564baa3f02d8f5cc787c5090d2dccceae3446923e5fbb3d63fdc0369e6c78fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "227bc693436fb44c09dae5a3978c868b203a31d4350eae1cf85eaf343e8ad793"
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
