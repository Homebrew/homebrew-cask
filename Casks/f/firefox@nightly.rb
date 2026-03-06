cask "firefox@nightly" do
  version "150.0a1,2026-03-05-21-51-07"

  language "ca" do
    sha256 "6812f185ee1ef4919def1f5d3490743ab34d076a5184c1a69a8e2ba8e88410f6"
    "ca"
  end
  language "cs" do
    sha256 "e678c2b69a2b9e80ba030cf130937d0ffaa8e805cc89e6d5691381c262bc2f11"
    "cs"
  end
  language "de" do
    sha256 "749f170cf8ce0762a27eff715b9db196171fb2093dc2113eb6ddf8de4429dcfb"
    "de"
  end
  language "en-CA" do
    sha256 "5c0e2535012507095c05a5a47a89a6de0654a3b54ddf5a6cdef797daa989203c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0631c44c167bc4702d6c963bd14d85e81416d24ed9254d2e3206c5ff898e1e77"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a91328e338eff9ca5e6ea0689c411d0d48c5ec75cd7c80eae90994ad693974a"
    "en-US"
  end
  language "es" do
    sha256 "24c8695bfc0a62c8c1382b467c97af12e3afaa949b31973aaf3fa72771071fdf"
    "es-ES"
  end
  language "fr" do
    sha256 "941dd6acf000f3e5a0204beaa2f686238ab4e688c91b0ec86c1d4da2fca8fe23"
    "fr"
  end
  language "it" do
    sha256 "a4fdb2884e8a300e3a40c527455a118ecfe1d8192cf892b6781f46d9257fd91a"
    "it"
  end
  language "ja" do
    sha256 "372c1a70693f28703ae839e5f1c1ae312ad4ad544bc4fa408d7961864dcd91ec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7e3e68c2b09eb33b3e600e36c663e28117f65e791834471499ab9b65cfccc80f"
    "ko"
  end
  language "nl" do
    sha256 "e9bc3ffaa93f459f935ab7ba869229d472bcb40a1affdb7a0fed43c2e45045ab"
    "nl"
  end
  language "pt-BR" do
    sha256 "20c063af2a93497d476d1d2b0dd37085a3538f85c03aad4cb5c3e65a7a0d2a5b"
    "pt-BR"
  end
  language "ru" do
    sha256 "4f56aea407d579bf2d286aca2529dc1ca6988dde7a08e221c5a40cab7bd20c74"
    "ru"
  end
  language "uk" do
    sha256 "c06e47115b33d377c8f32da9e0819c135ae12e2aa9397ce4a69397b6794952f7"
    "uk"
  end
  language "zh-TW" do
    sha256 "4d595ae32dc0647915e38569e98975889481140586138414cc3b80025c571d03"
    "zh-TW"
  end
  language "zh" do
    sha256 "372c1d2bfcaba763356e94d735b4698dcb6b3f887ddde4e9f8c4f5268ad96302"
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
