cask "firefox@nightly" do
  version "149.0a1,2026-01-29-21-11-41"

  language "ca" do
    sha256 "11462e8b8909eaa83b7853457ea7f9bcb75c1110c7df789ad2afee4854159f82"
    "ca"
  end
  language "cs" do
    sha256 "ce156ca586259d86b1d6fc55a07f3d03f5be471b75110480b18d5381699b1eef"
    "cs"
  end
  language "de" do
    sha256 "d2cdd8ac2e56a55985aabe25da8f19cc9b6b0f1849f8eded8ef4cdf18c1f4cd1"
    "de"
  end
  language "en-CA" do
    sha256 "f5fb3ffad04301047f2afeaedacd94c4a0899ea5623203d3eb116f471351dea3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "62a15368e43bbc413703692f323b04136ddc7f8fb2b4f81705339f343c562bf4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "32cb0843b54f15b5ae3b3a51d3e3e0e8c7514635f7f22cb6294d2c54342b84be"
    "en-US"
  end
  language "es" do
    sha256 "7b5f44d6c3f927010b272b0812a30b4cdb3bead0b4cacdbf17147d077a30d394"
    "es-ES"
  end
  language "fr" do
    sha256 "fe4e8886e762e6900fb2626dfbb38857d067635813138b7f8a84b994f3e78792"
    "fr"
  end
  language "it" do
    sha256 "cb9cc9848ddb9e5738c8f78b92f783219ed0981d834bd0ef8c0c65cabdc98bea"
    "it"
  end
  language "ja" do
    sha256 "3508e5af30f576229c4bab56420b1a1d831971d17d0782cad8ec7ca305fcbebe"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ed5cdafa890c2e0da5e8320817cbbc7dcfebd106d56e2b3f8c04e1d9221915e7"
    "ko"
  end
  language "nl" do
    sha256 "45bf95f435c7710ff0169dbfa6cbb14ce2add4329cddfa33c029233636d80fe4"
    "nl"
  end
  language "pt-BR" do
    sha256 "c524ea6d4af9232974f18976bba3ba53403c8a0064e7f1486454690f4a66a780"
    "pt-BR"
  end
  language "ru" do
    sha256 "d6294ab9c993cc43ba7e17f7ff4eed893e4548c651ff4fd2b2d7b0c986bc81d2"
    "ru"
  end
  language "uk" do
    sha256 "c907a05f11b8b97c41964ce6d19c489bd018fce94eb5929c8cecbb73fb9a9d4e"
    "uk"
  end
  language "zh-TW" do
    sha256 "6c34f9539f36e832714d58cac77cf33d180fa524feb0b4c3c4fb7f9a32f04ace"
    "zh-TW"
  end
  language "zh" do
    sha256 "85791d86269696a450bff2b80561aa0f80edc805a1e575e4dc2e5b86e1ad57f4"
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
