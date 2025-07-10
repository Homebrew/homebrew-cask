cask "firefox@nightly" do
  version "142.0a1,2025-07-09-21-57-37"

  language "ca" do
    sha256 "26dc6aff6ade1cc6a928e36b7368ddc2189df13f48d44598c540162670cb1889"
    "ca"
  end
  language "cs" do
    sha256 "27dd8c9feb3904c2a7d34d25571822e93aa91365a624b2e5be63c8581adfa53d"
    "cs"
  end
  language "de" do
    sha256 "960a6dcb449cc3b5e79a5f241b36a871193bfc671df9a136e657ad3b24b6e81b"
    "de"
  end
  language "en-CA" do
    sha256 "44d498f13f21eacf9bab29adebedffb129b172a96b1f95283356ec5e677b1355"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dd331068d70ccbc02fb070492a7b410f7af5d60e7ee4b10ba92156973ca1e3d8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a0228d3a1ed5fbf230aeb059f263e0e2bedc1e72e543a229e737b2126d249280"
    "en-US"
  end
  language "es" do
    sha256 "666c2465c77eff9d5896679ebe28e54c5ac137ea3cb7bb7848b17fdbf04ff2ac"
    "es-ES"
  end
  language "fr" do
    sha256 "1dad0ea6c11e36ca93be0450e6532dfb1b291ba117900374faf10385b71f41f1"
    "fr"
  end
  language "it" do
    sha256 "55f9f1fcfe3808a7facc8c86080122ff1a61f0f4d035033af357339497e3a98b"
    "it"
  end
  language "ja" do
    sha256 "3a19a46bc8e2b769330f5144e105acf311e014a7918ac51b0b534958285b03cb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ec6de248c4cbd24b17704e4270b5c9e43ed61d8c49e4879b26f0a02d970873e1"
    "ko"
  end
  language "nl" do
    sha256 "c8bc82281cd00e3cb16040b27e5bc70eb7c31c4b2fc4db571993a2fe0ab994de"
    "nl"
  end
  language "pt-BR" do
    sha256 "a4f80e891e80290fee44aa9dd2d8cf31291f546ed29b345a527fe6f731c9fae7"
    "pt-BR"
  end
  language "ru" do
    sha256 "2024284d65238e243ac9b42018c01e4c64dfeacb723cd8e2fd6b0b4dd9c69e58"
    "ru"
  end
  language "uk" do
    sha256 "df0b69fd053e7afd504051dae064b5f95297cc70c76e1b41232c70873d6c53a9"
    "uk"
  end
  language "zh-TW" do
    sha256 "1cceac09e8725b6d6f2ca81e19b2d31695903e7c83f72df40318debe2142efb3"
    "zh-TW"
  end
  language "zh" do
    sha256 "8c8309cfd23d7ecdb8d68a60bdb90f16fe2cf02510708dc72f22dde518726bb0"
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
