cask "firefox@nightly" do
  version "142.0a1,2025-07-03-09-28-21"

  language "ca" do
    sha256 "44e735cc14df6a02b2fefb2961dcc6edcc7ad7d71445a1de2fd391f97405599d"
    "ca"
  end
  language "cs" do
    sha256 "a0bcac7a1dc9b754015ce521dc43d12e552fad742481933fbb5532098a523b7a"
    "cs"
  end
  language "de" do
    sha256 "f01aafcddfca895ec9d3a610e30e619675b51ce0289b70f2ad2c214e8ad72ccb"
    "de"
  end
  language "en-CA" do
    sha256 "a92791d05701040d482895721ccbb171687382f83164510301a248a7bf4bb9c8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "192cb82fc40a5092bc92238ffd03fd25830953e8f7bb8af3cde9bae9e06b8304"
    "en-GB"
  end
  language "en", default: true do
    sha256 "79f2ceda0634650e13af74fa6f6a4cdd9033d977fdbf2b60670486d97c1869f8"
    "en-US"
  end
  language "es" do
    sha256 "09c5315f83c7b64cd7f0c0b61647c49e9904e76d8bea21fd3eb8136d963018f0"
    "es-ES"
  end
  language "fr" do
    sha256 "6b09e9f5679e4e1f9e3af2c21562b8318d3bcd132becbfba65f00ffebe078430"
    "fr"
  end
  language "it" do
    sha256 "de239ff229bde5c4d7f3dba17923d40574095c8398c0e69499fcc3f05657e92b"
    "it"
  end
  language "ja" do
    sha256 "7f51b71dad090ee92ea0cd80d1d7533d2468ef8084e0e3b498dc093bf5943af8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e80b1ff2642a44ec329549b07b742ca36cd713110c140deedf284910a0ca65c5"
    "ko"
  end
  language "nl" do
    sha256 "895d2323939479ed3572e43878f0220edd21452d69a7ff64788476abe5cf301e"
    "nl"
  end
  language "pt-BR" do
    sha256 "7d11d296c1aef5cca3547db71fcff128b4f4f8950ef3ebb9bf6ff25f7372add8"
    "pt-BR"
  end
  language "ru" do
    sha256 "2e5a9c8844ddc0d762b79b470f504a8d780727ac4901bb9fa3c2eb0697561871"
    "ru"
  end
  language "uk" do
    sha256 "bc28cb27edec75cc9e9e4ab12b86eb1700a9f9bfd524a66a2ebfa71c51382ed5"
    "uk"
  end
  language "zh-TW" do
    sha256 "731a05a16b0f0216782ee2c69b063c00d396a5ada26747ee192f129a496ed4ee"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c4eec499cab8f3916f945cc09871464550ea3361cdd0506af9a126c03268477"
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
