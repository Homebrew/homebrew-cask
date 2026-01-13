cask "firefox@nightly" do
  version "149.0a1,2026-01-12-21-15-23"

  language "ca" do
    sha256 "cfb2b97e40dca1dcdb9b3f23bf41500bc5587b366c84981d043eea4d176fb26b"
    "ca"
  end
  language "cs" do
    sha256 "ffcdc6d43d4ea2140fca73fdc27393b53de292595ed9ba759feadd5dbee2bb28"
    "cs"
  end
  language "de" do
    sha256 "6fd0a89b6b96922a79b36db63cfcdb8dbc1d1bfe3ac01d528ca9b9d8ea9792b2"
    "de"
  end
  language "en-CA" do
    sha256 "0187a0436dc4ccce015d83c959abf5505c02aefe91b67307f7d734c113f38da6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "332d6769e49ac2270424be5a022269606d4b1cd72bf4a5e0464caf5a23abc256"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ca1eca8f0677d6156f960686857a9ca28cf29c27df13f89a921015320b65acb5"
    "en-US"
  end
  language "es" do
    sha256 "32984bf5f65c0c22f6ca0a868f82943795c10f5016cb86b984edb636f9e76a23"
    "es-ES"
  end
  language "fr" do
    sha256 "5890399537f8b37f5bc5982983cdcbedbb80c27075fb10fe6869e90be842b604"
    "fr"
  end
  language "it" do
    sha256 "324f89104445138698a2678f60b0d5613d45224a08be619ba9407bdd499ae1be"
    "it"
  end
  language "ja" do
    sha256 "e6c9fc0fd715673bb07c0bfb5f2b3605146b63bf82a87a79de784505c32a95ec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "73b29ac42b22d817c4633b663b89cea1f672b1d6fac6d5415c116037f87e566e"
    "ko"
  end
  language "nl" do
    sha256 "316a65f60fd7cc8c7af1f1535398be966cc121d9e7cc2d9bc1739d16057fc6a0"
    "nl"
  end
  language "pt-BR" do
    sha256 "4ba82efda57002409b02c45a63088bc421e24ec39d6733d0fe077dee2e067458"
    "pt-BR"
  end
  language "ru" do
    sha256 "f23a24c95651bb34f26f30cae4276171edab27855faac6653a6038eff129a684"
    "ru"
  end
  language "uk" do
    sha256 "814a202082afcce5fa727c850d8bf4035cd8ce17207b3650b6c1e3468d1522dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "e210840239c01eec39bb3c8f4042cf8e6f4c63889948531e04e85ed363d10e6e"
    "zh-TW"
  end
  language "zh" do
    sha256 "ab2c74cb8d3deb84d9a671e8834240aa8e064a880a68ad972f12306eff398190"
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
