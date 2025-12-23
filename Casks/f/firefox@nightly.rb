cask "firefox@nightly" do
  version "148.0a1,2025-12-23-08-58-00"

  language "ca" do
    sha256 "cffbb0933d867bbbcb35030c94e4ee73bbc947cb5270203b40285c573786ad17"
    "ca"
  end
  language "cs" do
    sha256 "55d7d7eca342517236e94986f7e0e11c87e4a8cbb3d8b610a058b9602f24fac4"
    "cs"
  end
  language "de" do
    sha256 "7795d708d3f7c96720829b6b46baa2f240c7d02f5cc4b5581dd35e33dc7b4d35"
    "de"
  end
  language "en-CA" do
    sha256 "a0e27b8a25907b04583bfde8979965b2317ad3ed2ec98abffc6e77c09f91a899"
    "en-CA"
  end
  language "en-GB" do
    sha256 "691cfa27f5ad7c93d934cbd715fd00edfc54b044556a935d762bca20aae3fd65"
    "en-GB"
  end
  language "en", default: true do
    sha256 "26b81045a3e5e80b21005b055585b79cb03c0dbc29ee7f5400ce6c124d14e007"
    "en-US"
  end
  language "es" do
    sha256 "96e9b6ea311e0bb76b17f8f66bc5f935c7ba4588a628a534078ddce0a05f4dc3"
    "es-ES"
  end
  language "fr" do
    sha256 "c635a1af2c234e0024a205f075afbf88e9cac7175eb150711f99b1a012a66790"
    "fr"
  end
  language "it" do
    sha256 "086b8a3c0f646548f96dd5b269dd2540cd5108b0858cccf4880b8ba9d9de7698"
    "it"
  end
  language "ja" do
    sha256 "d13f8516369f55c2ed2f5dbe126402ca465c7181e916e4c053e68252f5ea9b3d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f9ac9480f61c8f67f27ed499bdf433c241d661199c40f3fa88bd1ded8dfe2353"
    "ko"
  end
  language "nl" do
    sha256 "69b62489c6620674b235c0dab8d9d5c957800267a964ef46ee878331efd21cf3"
    "nl"
  end
  language "pt-BR" do
    sha256 "b5fa3ac062cd28e58318907dc430691762b68037a3480a632a527997f6d89c63"
    "pt-BR"
  end
  language "ru" do
    sha256 "c1369855f9c6fccbf38a995e81379832a06b01a437be8c1ce0abadecca1d1898"
    "ru"
  end
  language "uk" do
    sha256 "413e2d7f15ae9e73fb923fa7747cb0114cc46f6e7577f0b2ea5018da51c2912e"
    "uk"
  end
  language "zh-TW" do
    sha256 "e2a716d1a2382bd153f941336c092267a0e8b2912baeebf45af0871e148f07fd"
    "zh-TW"
  end
  language "zh" do
    sha256 "432005b9cf00bfc2cf3563a9762bb9ec34405a2d0174b8e3d773aeaa2e862596"
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
