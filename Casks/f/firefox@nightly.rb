cask "firefox@nightly" do
  version "145.0a1,2025-09-26-09-39-24"

  language "ca" do
    sha256 "3d90c88f5d3530868a280fe0265d8712c75270548e29bd59f471f1c397739669"
    "ca"
  end
  language "cs" do
    sha256 "85801a87cce17fecb5c7cb8fa90493677c3bdf66b112e6573ff46d13fd913cfe"
    "cs"
  end
  language "de" do
    sha256 "b8d22b9f11b020a4ca814ef853c01010ed81fdf0298aee4e0beb12124031543e"
    "de"
  end
  language "en-CA" do
    sha256 "cf15e76418fa616a7a4d2c87f07b901f799bd3d77f49ec58c08de58f6eb22ef4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0fbb38264427cae7cb2a87562d57f2bc1956689db4f6a38a9698c0fc05e40581"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cb7e79677fd367a73188cd861331de567832b91430754d6fa048efde33f4a78c"
    "en-US"
  end
  language "es" do
    sha256 "0c073396c7d9716c2d1c7cf9fcda06d9103ace1d2de0416e10d048e58bd4d7c7"
    "es-ES"
  end
  language "fr" do
    sha256 "a6c071581167bc053573417366209a8229b78e541b1e065186d3bf1d24b42797"
    "fr"
  end
  language "it" do
    sha256 "47b0a2c94e69157d93f5908d3f208a4d2bf0a6f50562c12b2c28f9d11f78e5f8"
    "it"
  end
  language "ja" do
    sha256 "d42e9f86236d243444ad005cc92ae7624cad923a5ad01217d8aebbc0564d356d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4272f92508ab1afba6bc84bce70ce556f9e567c75174b0c2cfecdecf61394c6a"
    "ko"
  end
  language "nl" do
    sha256 "ce22e1fd4d73a500373c0b17cec39942e3821a97fe93abb981165cbc963639ab"
    "nl"
  end
  language "pt-BR" do
    sha256 "660bb36a69b7445c90c680fc973faca77557a88ae9f84ce0fae8e915f10ffe8f"
    "pt-BR"
  end
  language "ru" do
    sha256 "dec79e71c4c00c21cac6627380263b3733e9cf80389955bec6608b4d31d65ca6"
    "ru"
  end
  language "uk" do
    sha256 "0ebbeee284573852461a87e46a4bd9e3bd80ffc9d59ef5875d988bf4ad06225a"
    "uk"
  end
  language "zh-TW" do
    sha256 "ff5910e9dd126cd7d83ad08ccfa51ae0ba1d1f543d648800e92cc4afce7bef65"
    "zh-TW"
  end
  language "zh" do
    sha256 "90ff8bb11c4fcb1077bac87f87afa40a03f87856572445e30fbe9c02fd72316d"
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
