cask "firefox@nightly" do
  version "145.0a1,2025-09-18-09-15-32"

  language "ca" do
    sha256 "b38873b8ced530a0660210bcdc574546e575469618299cc7ca5d0980d0068ad0"
    "ca"
  end
  language "cs" do
    sha256 "b30a5519cc4f4f9273f5b3d573cf0a180437d5bde2c6c9b54a6f076b3bbc7b55"
    "cs"
  end
  language "de" do
    sha256 "666558ad46a8f968efc39cbb8f384c849d1dd3ba7a19257d076ea7f68e2b86c0"
    "de"
  end
  language "en-CA" do
    sha256 "7fd0b35f12bd03545119e0c9f63d4b95ea6e30917fd57013438f0b6b63959e8a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bfa875b6798989baebb2f4e91f24a3155611a123a604acefb3e5b0666d362500"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3400eb6a1cfb611a0aa65f3cf29fedff7333e4fc6e0adbda19f4c095ce1f10dc"
    "en-US"
  end
  language "es" do
    sha256 "d3c14f5a9d6c308e56a3e7331ced0fa63e338b97b10427ad9b6983d3b4a1999e"
    "es-ES"
  end
  language "fr" do
    sha256 "e19ceea8ca1cd892c374fe3d1d4e4b6f17d3d5009ff4bd87e60dcd942da73630"
    "fr"
  end
  language "it" do
    sha256 "ad110c492b911e7966ebfdb5dd87478a17bb4f10181bce76b62a8b030663b18c"
    "it"
  end
  language "ja" do
    sha256 "e19a71e8342fa6ec415047132c3f7965dfb3b525fa2562234cc02a1063dfcf1d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e7b7e07013f66d22e8b392bb91b80fc2da0abc1c3c195570074f8aa4884871e7"
    "ko"
  end
  language "nl" do
    sha256 "004c4bb62011d091fba71106e5186342f0aad11a1aca29265c6547c3c1b59a6f"
    "nl"
  end
  language "pt-BR" do
    sha256 "e5a46dfb93b7634b9aca9e2c6bf62f685ec639e625c5c14d11974e739c2754d8"
    "pt-BR"
  end
  language "ru" do
    sha256 "ae64e71d17d5cdfc2bbfd4ad9c6ccfa408973d33358ea565fddcb97b6b433f0d"
    "ru"
  end
  language "uk" do
    sha256 "201da5eb52ed41b55ac19befd8094a65fd4e87684794a48dcfe0252525617fbd"
    "uk"
  end
  language "zh-TW" do
    sha256 "10b94c82b1af78ffb9a030a95fc60b32cc9ab0b5f4963643f2563278b6494deb"
    "zh-TW"
  end
  language "zh" do
    sha256 "52390a8853badf6fcc5e7b11c65c18b07382a82202ac14a223a154529593d092"
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
