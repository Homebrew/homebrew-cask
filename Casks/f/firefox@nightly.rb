cask "firefox@nightly" do
  version "142.0a1,2025-07-18-15-45-38"

  language "ca" do
    sha256 "b7129fe6c68ac56311100351ea3ab3962ea140b3b091cf290966835a271225f5"
    "ca"
  end
  language "cs" do
    sha256 "46fdf43272cfca59aee8ea5472175f732ac6c75b31290fed59790297c5f7b5b7"
    "cs"
  end
  language "de" do
    sha256 "e68bcb69810ec138bfa31badbc73e112f5147c758c322867dfc24c9844c301d7"
    "de"
  end
  language "en-CA" do
    sha256 "e3871b2b9e832570dec6643d85ea7a22289beac9112b0e89efb9281034d0c778"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fc2806244f7828a17f548fd29dc799feb2e7899de196a19509dda8a590aaf4f4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e83fdb1fb3e04b2a7d565b0e710929cc88cc5b880756b91e8a71fdf9fd6e799d"
    "en-US"
  end
  language "es" do
    sha256 "79046061303071a4f8a48e30dc5d3263134901291b215fc005d0d9569bf4dc68"
    "es-ES"
  end
  language "fr" do
    sha256 "14a048366376629adb5fd1849dee01a70ee1e51e6166106a4f5f8139c18f1662"
    "fr"
  end
  language "it" do
    sha256 "a43dfb327f8f71accadee567e18382c1e6aa6ead1df01beb550cb7ffb195d6e4"
    "it"
  end
  language "ja" do
    sha256 "7ef7f5ab62d43b49e2dc0624ea25cbc15db669751d818a9cd3db90ff26989cce"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2681b6350689758a1b19730a4a829e48edfbb24fa667bdbe958d7822074eb6b7"
    "ko"
  end
  language "nl" do
    sha256 "d7c58df3a5f43129f6d730ef7d46e2d4f080ae399839dfd130254c960067a03d"
    "nl"
  end
  language "pt-BR" do
    sha256 "a2c64efa4512fd8a6bd8c846774b6f57c517658368684e0168a5f9e0e7bdaf85"
    "pt-BR"
  end
  language "ru" do
    sha256 "a0cf796faef25a38561233f38a6410330c605b6f1895ae6928b03a8da2da014e"
    "ru"
  end
  language "uk" do
    sha256 "0a1f3ff890fc9cdf6b1e82ab1cf399a5e5f1e14c9f7eaa1a3c5cf58a154c3553"
    "uk"
  end
  language "zh-TW" do
    sha256 "b2f0a4e6e103e28394ccbf1475726ba5dff7a7ab06ff4df5bc9a4488486edd09"
    "zh-TW"
  end
  language "zh" do
    sha256 "19d3aacfb951aabd93b8358cda376410c0f08e322f3bf6a09fd43ca2d75bfe7a"
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
