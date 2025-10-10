cask "firefox@nightly" do
  version "145.0a1,2025-10-10-09-29-30"

  language "ca" do
    sha256 "c1c1bdb343cf6d4411f4697869a7e5ce45679a7b571bd03022b0161ccd4f6787"
    "ca"
  end
  language "cs" do
    sha256 "cb1a4ae8b3d7bab7f382c5ad9ed37327b45a2fa392fb7d333591520c928ad123"
    "cs"
  end
  language "de" do
    sha256 "8b36dfc4f85a5dc0f16d17d370f0d072b114da9d7eff6f69ef001389a99efa2f"
    "de"
  end
  language "en-CA" do
    sha256 "ddee8ff457c5c55d361392b6707e9122b1cd748745adc039539cb26aa8d93bf1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "97988d003149cd8ea8146edad05a56daa67c3ed279bb11b172800de6296476b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f0110146d83c407f91c211b44fc2cc81a3d4311aa9914147a8c1cb799de17b61"
    "en-US"
  end
  language "es" do
    sha256 "ada5a6e8a36a9d3a29bb9841a05021398e7ac95273c6969c44e24a371656afb0"
    "es-ES"
  end
  language "fr" do
    sha256 "07cc3ff6a0b16443e3f81806ba1c4ae80bf685f71ff7f4e5c9aba1383eb0e202"
    "fr"
  end
  language "it" do
    sha256 "9b69b463dfc8bb9eff40a0ed02a9c0d4a87216fbfffcb56a6eb0e10bde811c35"
    "it"
  end
  language "ja" do
    sha256 "b26d7123a4bec8fb234c01616c4a330bb2194ab0cefc3b956e56fe445885c6cb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a51643cdc0a652292a23f0272c0e1004effa240df29ff58d4e61e7f8c862c9f4"
    "ko"
  end
  language "nl" do
    sha256 "4dd782830ed6ac810f4f21827394307c48af643beeef9676c196298885457a30"
    "nl"
  end
  language "pt-BR" do
    sha256 "a89e920e792631d05b513293a5bdff26f2a20f54dbf8a9223dee77b7eb2f888b"
    "pt-BR"
  end
  language "ru" do
    sha256 "95a77546c691d3eabdac662b30bbff55e920fc1b01cdd780c80abc64350b44c9"
    "ru"
  end
  language "uk" do
    sha256 "328d416afdeb6ec00e8d2de2d18d4723aac1c10785aef8715792b21ffe3ec18e"
    "uk"
  end
  language "zh-TW" do
    sha256 "b7511de4d7e2923be336b1dc4b0b1e499fe82b62d1015c5d82ea7b53d9563ce1"
    "zh-TW"
  end
  language "zh" do
    sha256 "5bda91b7e01131f65a0c6ced7a445a794a8849872fcfc5011c896fd3a6257c68"
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
