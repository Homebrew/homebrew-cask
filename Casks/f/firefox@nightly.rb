cask "firefox@nightly" do
  version "151.0a1,2026-04-19-20-35-36"

  language "ca" do
    sha256 "22e2d8af3da583bbe1f816fb1fbe7c0becefca04c30cfd65a1fa125257e3fdcc"
    "ca"
  end
  language "cs" do
    sha256 "9713c874afc21e1a86e427d2f7fc4f0d9b320c360d9d3b6978f1e8700c7d13a7"
    "cs"
  end
  language "de" do
    sha256 "75e44ce85d3369d614286f85efcdcd493988ce2a32010b4a5c6433de3e143de7"
    "de"
  end
  language "en-CA" do
    sha256 "b3584cbc348faa09e8dbe7cc58c8db6d079ed81b24e1306c21b9fa6d2f32dcaf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "df099f8b1ed5dd51c9a7b329ea957827ddea9bcf78d9de38d692f8475a1b0548"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e6c706a7aea537f408e873abac2a4d9dc6ea2cc12b10aea1b81a6b84ab06e54"
    "en-US"
  end
  language "es" do
    sha256 "2a82591dacc854ca720cab5a4c4be7de3fbcd84482874664e3fa255434e0c8e5"
    "es-ES"
  end
  language "fr" do
    sha256 "1d21941c1dbb9f844731105cc606efa35207ed031da481296b1155cc0cbd975a"
    "fr"
  end
  language "it" do
    sha256 "cd8ca7c8add5c9f03988927bc2f09688e20386283a7933cc5311d857186bf990"
    "it"
  end
  language "ja" do
    sha256 "c1e9ef53f54a59351866204792bd8605cdf0c5ed39709e115ad94562527288cb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "296cd81c2957b5c7eb1cd93418dd2d5bb931ff34b445e62a223bd662c8c6f6a0"
    "ko"
  end
  language "nl" do
    sha256 "7f8180bb02cfdff81a46847d630270e31fce0e8c7e586d265f253e4e7cc649a1"
    "nl"
  end
  language "pt-BR" do
    sha256 "3d8d9f18454a017dc677f0ac3ea338e5f1e0e6a78354f72beb3f066a9dc2212d"
    "pt-BR"
  end
  language "ru" do
    sha256 "4e921f58b576d21708e3c14bd42452c32a93f13a6b3d32e0fe363498d2ab0d1d"
    "ru"
  end
  language "uk" do
    sha256 "277699944642428176262bb49ef45ae2df9cfd22f2e2899ade74c85a87316066"
    "uk"
  end
  language "zh-TW" do
    sha256 "1cede39b2a84ec66d4acde1e4adb2892c1e34e3ab29502a0e8972ccdcdd46c14"
    "zh-TW"
  end
  language "zh" do
    sha256 "4eac3d3c2eb1ef0ed98201c43f2d538a97b3f2cc139d3eb3a5b7528a974f2b53"
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
