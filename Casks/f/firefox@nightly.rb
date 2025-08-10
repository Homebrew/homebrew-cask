cask "firefox@nightly" do
  version "143.0a1,2025-08-10-09-26-10"

  language "ca" do
    sha256 "49a564a29e41ec88a1a86525e7eabe4570960328815f103ca8bc16d955181835"
    "ca"
  end
  language "cs" do
    sha256 "02476ffc7839a9ca94819f47156a6059bd86ef28f817b9a87880f90e66d95bef"
    "cs"
  end
  language "de" do
    sha256 "2c23a50c472428e482af4249b3bb5926aefa0241ab74826253665c939d48bdf9"
    "de"
  end
  language "en-CA" do
    sha256 "c86c82809db3f4b041260c739e5d168cb0a9de85779dfd913794b4e6edf184f6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0a85f75b3726b6222885135024b68a89dcfac9caf256690d3e42e9832cd9a4cc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5a1a1bcb37bd045305db584a026fce99a0f2237b55fabdb3a5c2d5b0c4051113"
    "en-US"
  end
  language "es" do
    sha256 "6319c1206a9324fefde404e59b277bd06efec574e27fd6ca9983a92e12ee269c"
    "es-ES"
  end
  language "fr" do
    sha256 "cd05f72edc1abc8b596e5c72acdfb3029255c42b4c85f148583973640db918d6"
    "fr"
  end
  language "it" do
    sha256 "1f395a82c5475251403477a7c49cbab2b3e957f226cacbd92779a713f31fcae9"
    "it"
  end
  language "ja" do
    sha256 "35a212e87b8158b7aaf76386e1e7966f43e3053506fe9f0298315cfbc7c815d6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e0db9fadcfd34f88826d5e7d95bcad68b91b34db101ee8540515aad87ad13dfc"
    "ko"
  end
  language "nl" do
    sha256 "95b6d890871350a296ee8eda490ea900821e1b5e97283251af6de6658d626291"
    "nl"
  end
  language "pt-BR" do
    sha256 "97f3192226331119d3df735047abd66ac84eb806e58c3880554564c35b88ed4c"
    "pt-BR"
  end
  language "ru" do
    sha256 "8435df7fc69e26c077d3a0ff994fb312d2d131723a2b883f6c466e08605761f8"
    "ru"
  end
  language "uk" do
    sha256 "224e3f60c135bea0805c6c863becc50d2a9800f01676f5ff9780a5bb0ec32a1f"
    "uk"
  end
  language "zh-TW" do
    sha256 "1a2d03fdfe9edf90789275ec5b8ea4e639ee6ec7fe6f0a27d0458bbe1f64a695"
    "zh-TW"
  end
  language "zh" do
    sha256 "71c5ef9da8869624dedec32a23bc71d9ae6d2fca517397763c52f097a34f8034"
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
