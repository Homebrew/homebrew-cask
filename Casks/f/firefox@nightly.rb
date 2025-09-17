cask "firefox@nightly" do
  version "145.0a1,2025-09-16-20-35-16"

  language "ca" do
    sha256 "3cbca94e2decacf75308ef288a733f897ff4fa2202f34e3c0b2fedfdb7fdeca0"
    "ca"
  end
  language "cs" do
    sha256 "ff94bac010931e986084cbba1f7bc5b1d606f9b65cc8d352e936d9e99ac932cf"
    "cs"
  end
  language "de" do
    sha256 "7d6d2e2c0f324455fe0993443d0444533e7ed9df40c3da0689f8d88ff8cb05bc"
    "de"
  end
  language "en-CA" do
    sha256 "56718dfceb6fc6c6b7e5c2b2bc7e46aec6660a3e0675c6bf3126a1dcf14fe877"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a314fa7ea94ecfdd83ba56fd686aaf5c0d956615134bed392d8e1ce2b8bba91b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8a540dd777a98df31590ec0d106c19c666788f2986a608f821494cce4d596684"
    "en-US"
  end
  language "es" do
    sha256 "cc820c5768f5cbd9dbcf08236623d435d4e3a828fec6a30f5000b968dfcc47ff"
    "es-ES"
  end
  language "fr" do
    sha256 "1d9de3ea10b8a06a178bbdbd3df5f2387cb7a09d21d27f7b3f5245fc8688cd6b"
    "fr"
  end
  language "it" do
    sha256 "d0eed12a6e4220cca014f34702c5e956d8fff3442ddc2e16feb490236f8d0f0d"
    "it"
  end
  language "ja" do
    sha256 "a13279127c49b15fb37ee4f625c57c9bf595e8a6a7270b4c00a8e662f39dd082"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "53c54084cc0e329718da8eb414e89b7a17466a88114bc0c75025a57f02fa7e85"
    "ko"
  end
  language "nl" do
    sha256 "eda7fed12c98e745d91c25ee0377012e6816255a634263be81d442585973bb47"
    "nl"
  end
  language "pt-BR" do
    sha256 "26a5414c8112cccf1b6bf907e754c635f37e9568d6804df59f0cb090bc011d6a"
    "pt-BR"
  end
  language "ru" do
    sha256 "dad8f659854a622fcb5e572eb770ed89143be06d1007cfbe149b9264b47642a3"
    "ru"
  end
  language "uk" do
    sha256 "afc1c8a911d8830d77cc546b256a1efe7ffbf9a5474d3488fba8b473908cc521"
    "uk"
  end
  language "zh-TW" do
    sha256 "5ac553ba1dbd22f24039915ff9207688d8cd8550ff17d283cd13e493a22bd353"
    "zh-TW"
  end
  language "zh" do
    sha256 "b98b083c7de99278463e279fa83c4369496526b7d619b1a8d114cc1a6198b94b"
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
