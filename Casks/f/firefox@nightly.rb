cask "firefox@nightly" do
  version "155.0a1,2026-07-21-09-46-48"

  language "ca" do
    sha256 "0abd46c5b7c826ccf10cac4b575d87df5f553bf42ea1038c377c60b2f2c241dd"
    "ca"
  end
  language "cs" do
    sha256 "5ae4b1f7b99255d7fee26b3f505b3616091812ed797804523479e2c3a1643b17"
    "cs"
  end
  language "de" do
    sha256 "4031cf5cd9540c3ef00a84d87c4c9644f0e361d2e2c8eb9ac72caf952b079e3d"
    "de"
  end
  language "en-CA" do
    sha256 "e77491614a87aa5552add69797d6525a1a14f5353c222137755bb57a7031d509"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3d03419c9ad5c3007b1386e400c71dcd7daf9a7e5bf5884779a3f5baad27a5b8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9d33b42372f73ee68c76b7c7ea3247a3ef2590ab44bed743efcbab154f525d7c"
    "en-US"
  end
  language "es" do
    sha256 "0771061bf3bf2f20dcdb5797e77bd52c8e1afd1d7e5a604bf6c864379e47d760"
    "es-ES"
  end
  language "fr" do
    sha256 "a03e5781055637b72d5e69af58da723f549ba91eb14be1e10cf2f7013387fb3b"
    "fr"
  end
  language "it" do
    sha256 "c124fbcba087e53e2b3d71cde87140201e364a43b7fc3e2d67437f2b7b5d15eb"
    "it"
  end
  language "ja" do
    sha256 "7e54c86ddd5d8ac716e4e1a2b45728f08f8214d96588757157bcea17a4827dee"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cc020ce2151df973172cedc6f798865781354700e6d68d058e25163799519647"
    "ko"
  end
  language "nl" do
    sha256 "d9f66ed631bcd6bab5756a1fd81e910f10a467b9484c8ad25050af5604f8d8d3"
    "nl"
  end
  language "pt-BR" do
    sha256 "f3970847c4f1c35cb07b2cc210f3529e4364b72da9ed56969bd1467809b5a326"
    "pt-BR"
  end
  language "ru" do
    sha256 "5e0b19c33bb1322f94e0cbfba6519edf14e2978c531489ca0198dd07b033f177"
    "ru"
  end
  language "uk" do
    sha256 "e36044826686ecb77fd3dae4e3196c5cb37a2867f30d3a19247e2ab10694cbae"
    "uk"
  end
  language "zh-TW" do
    sha256 "bd405fbc5c7197ae487a03a1b6ce6ed3387ae18df3bdee2bc46a3ff37086fe2a"
    "zh-TW"
  end
  language "zh" do
    sha256 "6cac427307d959a65791a614a1f4dda05ae12791a51fe4f9e15523cb94347ae2"
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
