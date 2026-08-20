cask "firefox@nightly" do
  version "156.0a1,2026-08-19-21-08-08"

  language "ca" do
    sha256 "e37bb0224bc2c236073fc06b35b095ce07efc4093f79b69a037cfdeb522e0198"
    "ca"
  end
  language "cs" do
    sha256 "30b675c1e9bcdb213ad6e48fcdeb61fd8e090c4ac3c2046ae678ab0ace62962b"
    "cs"
  end
  language "de" do
    sha256 "de6db1296cc8dc9815abbec3bbb08a1b2d6def7970e220e90a9b7ca890cf6bc5"
    "de"
  end
  language "en-CA" do
    sha256 "d4effde841f957ed216e486f4921710ec1c9aae8208d5126496023540ee88ad3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "76d649b700fd8be4daa8eb3a8a104a7e33b2ac859023e54063dc3065288b59b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cc3aae13add72d738702b66edbe95a21b508639dd7ad7cc05ed2ccd2b77fb373"
    "en-US"
  end
  language "es" do
    sha256 "9ccab3cf2f4310eb2aa028ccc07498135ee1af3aa6cb2e463f6f5a8d9fc338be"
    "es-ES"
  end
  language "fr" do
    sha256 "b4f60bf00ecccb83340c7c9e777d7c9bc881c9ea0349c1a6fcdb71db270de696"
    "fr"
  end
  language "it" do
    sha256 "cac33e364134b4b9f3afdc91f9bb6bb64e3a7fc2f0a581824f0bbffcc37bd689"
    "it"
  end
  language "ja" do
    sha256 "7361fe3784d536e51a23e8104105eb8c45a85f8c8ba9f1f77de70f2c46f1239f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c330d5e4b6187d87753f7b63e88893d95556c9631199bc4afbac8ca3f24516a7"
    "ko"
  end
  language "nl" do
    sha256 "3231a7fb8ac81002168fa4808161eb971020bbc41d957cad7cf1cf374c4d564d"
    "nl"
  end
  language "pt-BR" do
    sha256 "2a72f5a4b68036f87220989cfd67fa94f6b1679377f91c9c88a98eb44c22d8e0"
    "pt-BR"
  end
  language "ru" do
    sha256 "ecfac8f2dcb43d052c4bd669cf7063429e8e472d04f71349db46839af4829366"
    "ru"
  end
  language "uk" do
    sha256 "49b470cf439b4a419a88426d4c649213fc98dc4b682ecb7888a4ad639546642f"
    "uk"
  end
  language "zh-TW" do
    sha256 "fff82921f3d6967e3635f5a480a93b9fdd827d3692ed0a945d2b41136b98db9a"
    "zh-TW"
  end
  language "zh" do
    sha256 "449c00f3e453bb0a25d4682e345c4d29082ad1e34e6396ee77c756fc59dceb2a"
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
