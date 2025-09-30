cask "firefox@nightly" do
  version "145.0a1,2025-09-30-04-30-57"

  language "ca" do
    sha256 "f7fb17b182286246a748e5f904f5a4e4bee260a94d3817edda2a800ff2b0f079"
    "ca"
  end
  language "cs" do
    sha256 "6138a8c2159e5b409a628fd4d58d266d1ff0b9f0b882f74f9db3acf10a083518"
    "cs"
  end
  language "de" do
    sha256 "6284f201494e233f4ae9483b6293707c3eb52b7e8abf1b3346246a5900869bca"
    "de"
  end
  language "en-CA" do
    sha256 "73f47eeaa3c53ca55ffeccf81a8b182c8bb126aadafdcc73d5ec3d0573123d44"
    "en-CA"
  end
  language "en-GB" do
    sha256 "53ca08362adb2782e1247779f5033b6e60e337eea1e14869b1f03e17722f709b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "04e23f548a24734defeb8625fa55f8779ce9078c35a1c8b4f078f9728990c168"
    "en-US"
  end
  language "es" do
    sha256 "93e16c10a901f16518cc531508590492be9ea81f7eea50eb27f0d008f0268195"
    "es-ES"
  end
  language "fr" do
    sha256 "a1e398a8681f8f2a2cfb24b5df927e6c52d0c4d0e70ae746f7d96e1f410758e6"
    "fr"
  end
  language "it" do
    sha256 "00a8f63bdcecfc467659e403f9544b49b37853680cd5d2ff1fb23decc3dd3070"
    "it"
  end
  language "ja" do
    sha256 "413e0d7c2b1de9497732bf4d4051a38b7c2735b0bcbff13e742e85eaaf12b739"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a0907be3b7b5fc4ced29bd4eb0bef8867e88e09f5dc657cd2e2c1f150a94f02b"
    "ko"
  end
  language "nl" do
    sha256 "4037d0957d040939f8968aa560566974cfc864b1af5c47aafdd3d83090fb9000"
    "nl"
  end
  language "pt-BR" do
    sha256 "355dd3bf50f36025494c57139ac6ef851705a50a15a7781142d698e197c90d2b"
    "pt-BR"
  end
  language "ru" do
    sha256 "3c7742b81465dd5113927ac98772234950fc49cf77828ddf3948037091c1dec2"
    "ru"
  end
  language "uk" do
    sha256 "b80544ca3d53d506f8f3649df8f65a76127684d70089c2611932b1b587ac8410"
    "uk"
  end
  language "zh-TW" do
    sha256 "9ce7e747c8492a06a90b6b134db18f38caf95b31b2d0faa3466a6b1d105e8afd"
    "zh-TW"
  end
  language "zh" do
    sha256 "ebf9c63bec0ed8a8d7ab9965a5784166bed0580334b91e5df098ef1559aa2956"
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
