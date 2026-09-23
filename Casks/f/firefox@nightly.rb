cask "firefox@nightly" do
  version "158.0a1,2026-09-23-09-13-38"

  language "ca" do
    sha256 "fcc65d24d5fff8ba880a666e50265e206252cac3e90582528155fa033e46f4df"
    "ca"
  end
  language "cs" do
    sha256 "c2254c1e9ebeafa8d99e7f07af1f78c9d3ef7dc4139694778ad033fe7472e0e6"
    "cs"
  end
  language "de" do
    sha256 "36c5719bf626e0468ead8801837db4b25fe9c85adf26c635ed401c1dd68c3f99"
    "de"
  end
  language "en-CA" do
    sha256 "2eb1c3e605db55041b8f0424202caddcf63d032ccec561d848c5b1ae07d38f3b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9004063eafee4e2304a0f59305cd7b2f2ade70c6132de50666ea1d08bc53c8d3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2a67ec0c61820b542b50b7aec7ddce808b35f8f221605529cf0d336dbaff7c22"
    "en-US"
  end
  language "es" do
    sha256 "b76c9b77eeea17c7bf25722684bfd1db78bceac90763e79defe1ded67b6544c1"
    "es-ES"
  end
  language "fr" do
    sha256 "8883832d91640155d0db7026d3bcdf10e3c83250ff05defc1568dcedc3a75eb2"
    "fr"
  end
  language "it" do
    sha256 "6597473caf2deef32505a0342a88f85e94dbcaa0fc54876a1e7e3d7279412ca0"
    "it"
  end
  language "ja" do
    sha256 "d9253e7e6d883704a6d0dc8b219d797865d957c8a0fc8a45f7a0452b7523f1b4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ea3fa381e3b69873bcaefc6ba85229f962e969dffb994920e1ed1679a03dadf4"
    "ko"
  end
  language "nl" do
    sha256 "d1816c993b035111e3f8e97dcfb7d3d71bb95f48b47da2907f90756f920bebda"
    "nl"
  end
  language "pt-BR" do
    sha256 "5987b34ffa40456bcdeb91553f55c62df23bcb1c9ef50542c2350b2827f8cb69"
    "pt-BR"
  end
  language "ru" do
    sha256 "c7e21dc99af3be9dc652fe12028d2cf3fa73b8d6c56fd55fb3a6cd2849935d6a"
    "ru"
  end
  language "uk" do
    sha256 "391fbb7278e72b86bacade0af7a86849236de4b601236bc2bbc9f05036fa012b"
    "uk"
  end
  language "zh-TW" do
    sha256 "d406fe63abfc4e8d14a4055172417f254b47103f9182250729f73a29156829fb"
    "zh-TW"
  end
  language "zh" do
    sha256 "1fbd5703d8dae4712fd09d8ede5c6c7844c5c139473bba120d22cd748e8cb884"
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
