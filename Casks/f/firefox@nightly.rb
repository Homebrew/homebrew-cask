cask "firefox@nightly" do
  version "150.0a1,2026-03-13-21-31-58"

  language "ca" do
    sha256 "c38bf4e69f2919dd1131b8db066681617f832310dfaed18c349aa58db29ea401"
    "ca"
  end
  language "cs" do
    sha256 "653337b2e77b6094355562faaeff8831872b3da44cf9110ece5d0fbcf8b0e45f"
    "cs"
  end
  language "de" do
    sha256 "58a629a5a1845beeffd8380dc95327448e29992458544842cf77f68e9cff7491"
    "de"
  end
  language "en-CA" do
    sha256 "69aa3e1259ccec4bf959cc86eded51b1572f6172f595d6c9338d77696f314844"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d358213877d1fc9a1e2eb7cce862d97edf9ff6e687011ea61c8e982cf8093897"
    "en-GB"
  end
  language "en", default: true do
    sha256 "475cd581bc075348d964656004858fadf7a179e7f678ecf26b2bda2e85a9c5d3"
    "en-US"
  end
  language "es" do
    sha256 "c4f3d3ccd24c83f4346f773b044bed7ecbff2550535cdae0663dcf7bb2ce2842"
    "es-ES"
  end
  language "fr" do
    sha256 "b0897ddbcea8877823893a8e4958585ada7bf17a58d28430824241acb7c63812"
    "fr"
  end
  language "it" do
    sha256 "f01b65ffee67dbd360e32c5dde0a773e408812a4b41eecd9c9fd102775b6a890"
    "it"
  end
  language "ja" do
    sha256 "81def1d630afd24605dab1a1310f3bd80257027f0484311c4536ee4bf09f012b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9a7a6b4cf262bf9bf41eb9a07bb7e430e5b56ca6e76d33410562be36146a1b25"
    "ko"
  end
  language "nl" do
    sha256 "dcba4ea376001a260104996fe983f4fb00ff670e5c1d09f934b5db52cb361f9d"
    "nl"
  end
  language "pt-BR" do
    sha256 "e8b7e3752f09c4b738acc890d9d9b494e1c7efa376d4ac0a344f3050d1a62a42"
    "pt-BR"
  end
  language "ru" do
    sha256 "0255cb1c9e3bfbf755186a6f2cbf712fa4f9171ac36b948f649421661760e905"
    "ru"
  end
  language "uk" do
    sha256 "45d5b41fee93db1600c96df6f1d605648d6845f7e65c0e5a457af2153ab30b03"
    "uk"
  end
  language "zh-TW" do
    sha256 "4ec0ba72b04c7bb0fd8d78312fb95a3aa36273dbc6ade0cf91f351e0d0bed6a7"
    "zh-TW"
  end
  language "zh" do
    sha256 "f1e4284ef95b71caf632fee0f2133ef5783b7cbaf986ed332d38f165c4d06493"
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
