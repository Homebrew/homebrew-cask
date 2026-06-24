cask "firefox@nightly" do
  version "154.0a1,2026-06-24-04-09-57"

  language "ca" do
    sha256 "42ca44c3ba7b3fc6ea9ab670da4d659e0f8c314585349f2e82e5c1b79eb0e66f"
    "ca"
  end
  language "cs" do
    sha256 "fa303cdbed985c13642685f68f3f4cecfb41c07e5b306dc6463e834a80e3bba2"
    "cs"
  end
  language "de" do
    sha256 "72e01afa7c75c62ab3c2fb7982d69da57f5bb5b3d8fb5dd23870d280ba882564"
    "de"
  end
  language "en-CA" do
    sha256 "64794f2bfe85dc73be54a41433194df416759259ebb02cb639994de02e0104cb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "060bc7f354a899a004a3a8638c569c46d200a5a4d37a9fead0cbcc5c7c6f5ba4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "860204bb6f7900cda9f755d49e30f0c4961263399378334061e8d6eaf9bfd80d"
    "en-US"
  end
  language "es" do
    sha256 "e1ab3f697651554ca09ceb2bf3e82f94a27f975b9a9577da1863b7ebb6558b0b"
    "es-ES"
  end
  language "fr" do
    sha256 "3f5ede9ba275740db259595a0d9dbc08761edbcb2b72aaa87c5e0ddfd1950ea9"
    "fr"
  end
  language "it" do
    sha256 "c4533560f6eae48cce3f87270447289c588c0885817c1f8bfc7bfbd7e08edc9f"
    "it"
  end
  language "ja" do
    sha256 "e5c70019400c7e83078c5f858cd8c55c468599546d8f021bf4423982bf28b65d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fa3aa41fb272994c18d5f78986729f62082e6404c5294b04650ed1093aec5760"
    "ko"
  end
  language "nl" do
    sha256 "c7ccd4c9004a1042de7af58432eccf9c806bbca8b23acbef976d317b8071c21a"
    "nl"
  end
  language "pt-BR" do
    sha256 "ae1d193ab393e28e91c1ca4dffccb06fda14ba5919b9d3854e8b6a1e771a8fb7"
    "pt-BR"
  end
  language "ru" do
    sha256 "edc26a294f57b673652912210a44cca83a7364bb0449e87fa4e6f9915f9d50f7"
    "ru"
  end
  language "uk" do
    sha256 "66195fa7cf5d6cbd5e68fb5e72ddee6ec8ac29c6b359660f3507768705d6349b"
    "uk"
  end
  language "zh-TW" do
    sha256 "11562a8d5497ebc2cdf08600a78c7343b89e7ed0e9a79aa5ad56b2198d8a106d"
    "zh-TW"
  end
  language "zh" do
    sha256 "b1e5c82d76910950776e19ed575765bb33b4f2e1b6e6337bd7fcffca395cd48b"
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
