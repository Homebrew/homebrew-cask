cask "firefox@nightly" do
  version "145.0a1,2025-09-25-10-01-12"

  language "ca" do
    sha256 "6b84187b8a89476f8fbedd71c014a82a77fc637d9ffe3c0c62a31e1bfc3e31a9"
    "ca"
  end
  language "cs" do
    sha256 "f4d3a815854b68bdffea712a652b96f60765d04ce4e45a43b5a4e9fdf8bd0817"
    "cs"
  end
  language "de" do
    sha256 "680bb3f0abaa164cb194304d5a1196fe61073154368b28ffd638d00be6790da8"
    "de"
  end
  language "en-CA" do
    sha256 "6499675f806630b53aca63133f112311315b46262e0423851f14f9dfeae6da2c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e0e2842013424819b0f545ff5201ebdc07b6e67fe76db726766fe416d6239a6c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a45bca5dafba39b9f2ee425af276ec9335fd52b9292f64f0950349eef2cb1f3"
    "en-US"
  end
  language "es" do
    sha256 "49513c44ce8143b3d4e048866d126547d2565ba782ddf2a3e88880fdc8c3af27"
    "es-ES"
  end
  language "fr" do
    sha256 "24b0b6cdb9a3f4b174d446e9df718a779dc6a86dab5177906872ced5cfbc4584"
    "fr"
  end
  language "it" do
    sha256 "00262cde2ddb804f0aeeb16bd48f5e6ae7971fd01b59a28a8ea0e710ef5fb744"
    "it"
  end
  language "ja" do
    sha256 "8526c5e17d998c1c539ed186579cb813c606b797bc694c92a0f0ec8f39484c53"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "99372f68e3de512d1b1cfeb080ef2b793e92ccfa2a637379555970c640e4e732"
    "ko"
  end
  language "nl" do
    sha256 "18638fe196eb9a2c2370dcb07989af40197074e7760c5c7dc6aed0148715c999"
    "nl"
  end
  language "pt-BR" do
    sha256 "5c8a98d339b33e47a53b675acdc9fdec620821f2074413b78247ed399b01f5fa"
    "pt-BR"
  end
  language "ru" do
    sha256 "b7abbf57f8349fe903e2cb2791c374973b4d4c7281e7f5feb1d8af70fc340723"
    "ru"
  end
  language "uk" do
    sha256 "2e9f2b780bb45f6ab6f38613642da3f1354520bb7030354f22c62c8b5ee25bc8"
    "uk"
  end
  language "zh-TW" do
    sha256 "7928ef70c4e489ac8ab5aff28cab85f468818d6c3b4c08b9c7d6207cc68538bb"
    "zh-TW"
  end
  language "zh" do
    sha256 "7c6bced720d6be4b5ad59fe4cef3375702762e704586ece1acbfc2c1f3eaff3e"
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
