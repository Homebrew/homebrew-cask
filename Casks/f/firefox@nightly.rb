cask "firefox@nightly" do
  version "144.0a1,2025-09-01-09-40-23"

  language "ca" do
    sha256 "8a831bb3824f44b3a9b7a93dc7193523aa818c565016cb2587a5bbe47703a158"
    "ca"
  end
  language "cs" do
    sha256 "c0f38ea7503c8a4f52f4c474562e454717b090a14d884f1a73b6ce34f9f993d6"
    "cs"
  end
  language "de" do
    sha256 "cd13da0a17cf95ca9445e41aa4507dcf069a89b793cbc1ea3630de5db67d3129"
    "de"
  end
  language "en-CA" do
    sha256 "26539bb1879d2718f9eb92466eeaaf8b71b5e17d684559e496c681085eb10343"
    "en-CA"
  end
  language "en-GB" do
    sha256 "11be902c84f106afa116b2cd408ad906a7536da984fe2d3ea7d25ee4e6825122"
    "en-GB"
  end
  language "en", default: true do
    sha256 "34084b64323380d4e9f00b228dedd95cde37e35377f73b310ad58f15dfcea398"
    "en-US"
  end
  language "es" do
    sha256 "1e5a517cc2ea9833cec3ab14668970cfa3bbd42ed6f85f6cba56c357227fc338"
    "es-ES"
  end
  language "fr" do
    sha256 "7e25967d3b7166a24fc3bd013e80ee9692661b7f45855cd72663eb48c28f0c81"
    "fr"
  end
  language "it" do
    sha256 "48b2ecf0a27efdcbcd7cf58e0a7552596599fc227da584a6c315bc03f0140e3e"
    "it"
  end
  language "ja" do
    sha256 "b47ec0ec33972f96463d34d5fc347c31d51725916a46d0c1bf0e0308b357a153"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7dae5bbd05cf6fb998e6570497f7c095afb226c199f676bebafbdff02d4f546b"
    "ko"
  end
  language "nl" do
    sha256 "daf31dd812501a6a264c039d263ddafa99f93edcd67c8ac455692b1ae0f67e3f"
    "nl"
  end
  language "pt-BR" do
    sha256 "08e2fcde2a18a38ec42efdbb6818e4a6229a2b0bbf72bfd73846fbb02ed4d5b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "f6004f9074ea7add15330eb5250ebf91396ce7f89058e7570797c039d4bdd7b1"
    "ru"
  end
  language "uk" do
    sha256 "f475bb34099229e84ccf75257473006d3467ffe34983b82f28f4b9c6341a71b9"
    "uk"
  end
  language "zh-TW" do
    sha256 "7559b687680c23556f3cb3a3b189cd37e572358cc1b8aefea2996ee109188c2f"
    "zh-TW"
  end
  language "zh" do
    sha256 "b1b7a81a957d8dcdaddc52e9d2c03c74a24cd2ac703d959bc8345112175aed08"
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
