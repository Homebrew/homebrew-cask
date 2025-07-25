cask "firefox@nightly" do
  version "143.0a1,2025-07-24-21-29-06"

  language "ca" do
    sha256 "b51a0c424beb929fd287641efb6519ca1127d29620d17c65742f488ebc87a430"
    "ca"
  end
  language "cs" do
    sha256 "dec6b4a72b7e5d3b1b041018d83ceac83c8862bdc3fb0586e6dac499ea902499"
    "cs"
  end
  language "de" do
    sha256 "0fcd577f9ea7141d00d2ff866566e5601b4c7e62bafe769dc1bfb6dfed78a8c2"
    "de"
  end
  language "en-CA" do
    sha256 "be6309ead1e25b0f8c206663ea8c52e91b75025b797571b345ae09114a7056e1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "32f838a198e1d1bdc65515562556068178e78a72cf91a7081a4968f7641d42d5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "afd69293574c961997979830755d5536e4f6e73fec4b61330b4ac2964abe6041"
    "en-US"
  end
  language "es" do
    sha256 "454ea3c030494a4771da37ffcfa989a978a64746c09d8d74ab84e8609cbd96b1"
    "es-ES"
  end
  language "fr" do
    sha256 "981844ba424e84af0d9976d32dda5a7cf02e7f5b6555175ecd4fdad0d0dacd35"
    "fr"
  end
  language "it" do
    sha256 "f83deba4e452c36cabad4b2c8ac05b40032c592812cd821961baee07bfe6ca6f"
    "it"
  end
  language "ja" do
    sha256 "1bafa49ebe840d091f0a9520da0a2b8ad1c39a11417e21130651699de0e56d91"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7ce7773e59f85865c41cb36b85d43f296ad94bbe8d8c5908b846c140b940181e"
    "ko"
  end
  language "nl" do
    sha256 "08a7e1a0dcdd2ee9b62280fc339d637d4c12eaebc1a5d65e6b339e129ddee4de"
    "nl"
  end
  language "pt-BR" do
    sha256 "468ad755752bf3fd97ff3f897d5cbaaad98b0c13f6b7978b9571b2cf50c75b0e"
    "pt-BR"
  end
  language "ru" do
    sha256 "e49dbaebb0f8c05067cc2ecd3d67d2e4d8b2f23b8aad5606a1a75d0410e238ef"
    "ru"
  end
  language "uk" do
    sha256 "054d32b3617d3d47318781c99ace1f4eb182953fd1a43eeeb2bb7af1e5806b7a"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f174531feee3a2247f69ff3de89a418c7b8b63db0b946efa8abf545cf63371d"
    "zh-TW"
  end
  language "zh" do
    sha256 "1a152f528b18bc39fe1cf7fbbfa1c182ed302ee70cd8b17425c3e9cc9f755713"
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
