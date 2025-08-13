cask "firefox@nightly" do
  version "143.0a1,2025-08-12-21-03-56"

  language "ca" do
    sha256 "371c7e7357df8b10b83eb5ea4881ceb1bcd158b9032704075a5b9e7fbaaa605a"
    "ca"
  end
  language "cs" do
    sha256 "e1bef0dffaa9c4423255eda547465114ce55665e1fca890442cd311bca7c7487"
    "cs"
  end
  language "de" do
    sha256 "b3ffc9573ac9c104642a40cc19a3bef7ee4e6d090b3045fe1c6656e9fc8e7ccc"
    "de"
  end
  language "en-CA" do
    sha256 "89da3117bf8f12478e33bc2b1359a13b51e6628bfe67450c6fa582f64a572b6d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0ecd8d1d099f727a31d6be4b719783e1b532f8882aa3d458d1e12de98ebb3c7a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4e248631404fd35bab67f20bddada7b5f38e17eb5d7b902387c895c1adf9bb43"
    "en-US"
  end
  language "es" do
    sha256 "d5a4a5fe74772e3346cd32238ee3268d6d08be139ca157a284cad441436a2f4c"
    "es-ES"
  end
  language "fr" do
    sha256 "60ea8b907e8ce77f59b2d4464feadd0d5c555b50998d260b739afd30bab74733"
    "fr"
  end
  language "it" do
    sha256 "8ace736bc205e7d89aa7023f1bd893a7d89316ee3e874c612ec3646be56db687"
    "it"
  end
  language "ja" do
    sha256 "8de9ee6df5fdf9b9693e97c9e93d23b1bc97aaddc3ed38bbd54084dc531c8225"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d845eb111fd7d711042f93d3a03208413b01c980f3acda758ba90d91520507eb"
    "ko"
  end
  language "nl" do
    sha256 "b80a5c14012bb0f1095a5040b586eb945611c2da4ee6e8472da41cb2b9646fc4"
    "nl"
  end
  language "pt-BR" do
    sha256 "7d1151a9baf093e9d3d7064e20e0efc3d62a8eaeb127aaf6defcb8e135b55403"
    "pt-BR"
  end
  language "ru" do
    sha256 "affb960fe239c5122d2f56befa21e795aa19569312a2f1318d8ef428e3a45c76"
    "ru"
  end
  language "uk" do
    sha256 "5274d709c371142f8acee8fe610ed2e7fd2baaddc9f59d0517c0421c8b546e5d"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc20617ab1c0961e474c9bc335669c0d756eff5017662613f34033ffa4e7598f"
    "zh-TW"
  end
  language "zh" do
    sha256 "719277cfa611205d7ebbbf416c5f420ac359612447778b7f1b1a5bae4703ad06"
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
