cask "firefox@nightly" do
  version "151.0a1,2026-04-11-21-16-05"

  language "ca" do
    sha256 "c1243e110458176f325bf9ec11be5dbbd5bc74ed616de47d073bef089197f9cd"
    "ca"
  end
  language "cs" do
    sha256 "070eba50107e99a88d67c047ea40e574f177821e7427d9509f5b991ab41457ad"
    "cs"
  end
  language "de" do
    sha256 "d142e3d92c7d286605521e8fb9df2680639fc305991eb4a54e0bce18484b9685"
    "de"
  end
  language "en-CA" do
    sha256 "4edc5972322de7a719ba179627f0fb609fe763f2ee80b8d48b65ebd574beccf7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cd3706055ef21e5f5e8573685b35c876aece6d6d252af9e3bda7a3f7e2478667"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e0d1a1c5823c244bc3409c5ca0bed8866ddc013848c253fba8b86180afb9d92a"
    "en-US"
  end
  language "es" do
    sha256 "d2fc97be4d297c90d096a160f16156eadb38ca5fd515da0cc297406cdc728a72"
    "es-ES"
  end
  language "fr" do
    sha256 "8138f6467a461bc3d9bfb21d3cd8139b969153864bf12a4add5bae4e46689d23"
    "fr"
  end
  language "it" do
    sha256 "29a9864c2034abab38067c150b76c3037564beb843744107de658ba79dc3751a"
    "it"
  end
  language "ja" do
    sha256 "e430e14f5a78435baed726bac2b96945564ffc030f5a2b34893ba8f94eeb63a4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "854c661836b0aa415213fed2d67e60f0f0f2e337a1fa2d3e40029dde1b35027b"
    "ko"
  end
  language "nl" do
    sha256 "91837b46a31ccfb5d8c088858db6bc71100faa3a112ba164ca34060c0a4beb33"
    "nl"
  end
  language "pt-BR" do
    sha256 "cee53ea998091ea3f3c82ee398fdc507606901aa6b48ecc9a5891672217dea2c"
    "pt-BR"
  end
  language "ru" do
    sha256 "d6fed66b1f632114a67da0ec6592db53712b942739c64aaaffc649c27e88d6bc"
    "ru"
  end
  language "uk" do
    sha256 "1fa3350f0814502e475a337923199801fb14239fb9fdc54dc56778fef277bcb8"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e990e8c6204b7467d45e69efed8de00850c2b407dbdfafbb40964b3a0da412c"
    "zh-TW"
  end
  language "zh" do
    sha256 "d58fca8c61c2ec7743bb71a5edbb9bb87d679a2d660e41d6c5f1898005b0c651"
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
