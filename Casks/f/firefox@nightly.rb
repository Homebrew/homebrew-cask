cask "firefox@nightly" do
  version "163.0a1,2026-11-19-21-19-19"

  language "ca" do
    sha256 "97c9d7dd0f7a99f3b7614a15d1678741aa2244419c2c4c03e0f11990cdf4f914"
    "ca"
  end
  language "cs" do
    sha256 "31d15843c53f1185bc2da91511c682173719de45186e707eb0f82a28303a5b27"
    "cs"
  end
  language "de" do
    sha256 "6c3069e79808c3746fcc7e87b883dce2c0c85a48ac7eaa0ac65336779e5bdb3a"
    "de"
  end
  language "en-CA" do
    sha256 "3f5f1825b2a5649cdf70d2e60de21a1ecad161affb48bbd41ddc092abfcdd101"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3faa829f1d71a78e7ffd7db61d5185ee5adcd7af203790a8cb107de8c2e78c19"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3af02d5e3e18e4e6e7e7dd520a841ea46c3087fe8d0c299f71ca3c7bef135853"
    "en-US"
  end
  language "es" do
    sha256 "0b2fb904434346185111029e9b41f346bf8718e737a904d1934fb15eb4470604"
    "es-ES"
  end
  language "fr" do
    sha256 "d2d71c7b2a189d7a6b8ed3f9dd7010739c19b2d6b0e98554fe48e8b75243325d"
    "fr"
  end
  language "it" do
    sha256 "52dea6333b3a595281c8fe0ed7b4f4b36a06de7257b3dd9978205d98753d2fa5"
    "it"
  end
  language "ja" do
    sha256 "5c0656a63d9552dee4e55932d55cb0bae573484a5e466683537b1ef595e78576"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bdf1a18750500ec13780f1bdb92b123f66c06aa053e6b5dfca0ec92db169164b"
    "ko"
  end
  language "nl" do
    sha256 "8bf780cc21d7b2f239d959d4a744b5f1f4f01c7f1fbdd6bdc64b1b67b9c4e05e"
    "nl"
  end
  language "pt-BR" do
    sha256 "279a21a094ed105f816017544ccdbc760b9bd1991b9df07cdad975343060ed7c"
    "pt-BR"
  end
  language "ru" do
    sha256 "d667939654aea5afa943a7f22339d595bf87524f1b69b9eb0192e57da8ea872a"
    "ru"
  end
  language "uk" do
    sha256 "72598d7dda4dc6311385e25393fc8701f5fbbc6183558fd942ecf659a21dc37d"
    "uk"
  end
  language "zh-TW" do
    sha256 "623fa7612ebc1efe37a97ca982abf2d11c6cf05de6a93fc248cf8a71841e9bb5"
    "zh-TW"
  end
  language "zh" do
    sha256 "31a00555325f333bcaa689b9e88d1864061c34b78c03eced21feeaec4f0f2e3c"
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
