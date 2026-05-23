cask "firefox@nightly" do
  version "153.0a1,2026-05-23-10-01-09"

  language "ca" do
    sha256 "3f5612161f33c8340a8559da0db2c8d4ecc6743a3b7645518515feaa3b2a66ca"
    "ca"
  end
  language "cs" do
    sha256 "2fd7150ce08a3482ecdcc511db64ecc072609d046e82f49641a679ab97e16440"
    "cs"
  end
  language "de" do
    sha256 "f007830243225ab704ca97784e589ecf35e2f1b4b41e9e3c1bef63ecf01cae13"
    "de"
  end
  language "en-CA" do
    sha256 "48aed976a0ea4c32eb652d84bbb1c3e0fc36d7cdd5166f665d73d51a42f06794"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3536cd6f1006b38ee1ef2e7edc273dd8294f2b5c3dac5f517ba24a29a0279243"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e18257af02227eb79a39fbaf20d80bd2ce0f8adf12f4e5093aa616778d997fc0"
    "en-US"
  end
  language "es" do
    sha256 "dd9158aa0ccc0b649b32df28c2f8f6a8961654eb26dcc86468cef4cf78346f5a"
    "es-ES"
  end
  language "fr" do
    sha256 "2c964698e8f9b4b481db3d86225db49bd90bd0dee0e4cfc10ae6e2977e04929c"
    "fr"
  end
  language "it" do
    sha256 "4b59b8ce1cabe11cc0614f46a00dccb743fad0653a6730625692bfe787e9584c"
    "it"
  end
  language "ja" do
    sha256 "8345235053116f66cb1c798e48ae3f701023ec2d3e94cbc88776d6795e1f0afd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4986c4381d3900d7188a974f2bd3bc0af5edc05d1c1ff6959f7bd4a5e034faa2"
    "ko"
  end
  language "nl" do
    sha256 "58eb5aa010d6b1ae92df0b3dbf33c20a6d9c927f2db81be59065690baefce8a4"
    "nl"
  end
  language "pt-BR" do
    sha256 "691f642d9e4ba72657d32c410bc66627ff118ad8d9df5f5a564ab11702f6b31a"
    "pt-BR"
  end
  language "ru" do
    sha256 "16af60a9e21ce406397cbf0e4e2b34b6e89be97c37ce41eb941d5f39c370d644"
    "ru"
  end
  language "uk" do
    sha256 "b83f4484b7a22c89a3c0218c6bfdba2b506e85fc1617e104c0ade2ef42f6f996"
    "uk"
  end
  language "zh-TW" do
    sha256 "10e1eb19601416f33807c86520acb2e6f505908a3dc5f665dce74034c5b57cdb"
    "zh-TW"
  end
  language "zh" do
    sha256 "1380546296d51f67a638984aae6d3817ccbf551cc3787287e02c597b177780e1"
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
