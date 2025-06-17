cask "firefox@nightly" do
  version "141.0a1,2025-06-16-21-40-59"

  language "ca" do
    sha256 "6563013a354ee29fb843fc8eb694a498fb01eb1145acb38e8dfc71dcb6d80847"
    "ca"
  end
  language "cs" do
    sha256 "b810c11100a86f60a600219123bdd33667d4c65b578e132d606503f7aa2db93d"
    "cs"
  end
  language "de" do
    sha256 "64a55683b5bb2a8b08bb54220ffc7568e3be3e227f6a257258b0deb8d5e18573"
    "de"
  end
  language "en-CA" do
    sha256 "dbab951a33d615a7e7a8a059d2733a42ff6bdeda168b01b8a2a2483fb98fa503"
    "en-CA"
  end
  language "en-GB" do
    sha256 "827d2d18b43904a77c69b0d3d780aab30738225eb723ad33e272e0a35a483543"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6114ec779cc026c2b3c63a48efa23707b840ae210059a3c623d86aef2b54bfa4"
    "en-US"
  end
  language "es" do
    sha256 "a6ddf157d2d687900f3a95e15cfe3fb856743fc0c265195800b1cd64bd24e33d"
    "es-ES"
  end
  language "fr" do
    sha256 "fc3deec3ed498ea4f0bdba889b25061a300557566289fd8ada0a54a2d903893d"
    "fr"
  end
  language "it" do
    sha256 "bc794daccdcd753b6257c3177239143c6728b1e8660272498c1ebd9849b68269"
    "it"
  end
  language "ja" do
    sha256 "af5298f9013928ad98e4340ac3b583ba8486ddd2714605147f21f1159d94c915"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "adb2ffd029dbe44f7a53c0a803a4948b8a40640b0a7dca09f987d078bc2cb2f4"
    "ko"
  end
  language "nl" do
    sha256 "d5f9b09c52ada7e13768620bd7d4f2bc2934e49ab3e535fde7070b7ab560347c"
    "nl"
  end
  language "pt-BR" do
    sha256 "39a5c9c8624c44c49d2bc80c7e2a40575f487b67895e14284841b1c65eb43655"
    "pt-BR"
  end
  language "ru" do
    sha256 "9e5669be4791901ebb0cf22fa6f84f7f5af09c21274cc270e1328d6b29f36928"
    "ru"
  end
  language "uk" do
    sha256 "3fa61c72e91d22cd2db088b159348559fe019cf7f0379074456a943f9408248f"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b69bb0add0f6237915f367f24407646bda96c9ebe4908b5e225c4ea4bd77a04"
    "zh-TW"
  end
  language "zh" do
    sha256 "65bc332708eaf9194b216b88c2838cab5dc12d2d6e3ebc2b3d1afb2830c84504"
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
