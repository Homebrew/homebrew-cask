cask "firefox@nightly" do
  version "150.0a1,2026-03-03-09-56-35"

  language "ca" do
    sha256 "e74683cd22b3bbbb3a57ccf64a93ff0b64cc0a7e5a8c3c82f1c471b649fb976d"
    "ca"
  end
  language "cs" do
    sha256 "f4a6349a74a7924f3250de2d347648a10467484aaa4cf0abb30aaa354287c6b4"
    "cs"
  end
  language "de" do
    sha256 "ed408d40fd225a97a251671a01bd72f184ae4756b52cfafa9ea938f1f589fdda"
    "de"
  end
  language "en-CA" do
    sha256 "ecbaf7fe63ccf8abc7e8aca6fef00536a5aeaccec92bb1c4cb239d25c3318e69"
    "en-CA"
  end
  language "en-GB" do
    sha256 "358c33cb1c3d889d56d59b150f944374b040f3623b5937d81218d0ef50cc3cb1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9bc1929d541d686ff351fc7166959d49ead83515b8fb48ac31444b7214e465ba"
    "en-US"
  end
  language "es" do
    sha256 "1ad0f5571508828aaea94745c45c11c7c49716ec37a67922953f19965f398af0"
    "es-ES"
  end
  language "fr" do
    sha256 "1f869de2b6d294632700b2bbadb620874e3ec0a7315c9314bf8fcee222054e6f"
    "fr"
  end
  language "it" do
    sha256 "144ce9ae19a5d2549c3344e67acd105cebd218f07d8eff0175d35147d0d651d9"
    "it"
  end
  language "ja" do
    sha256 "cbfcdadbf2cf14fb4ff1f28746905ccc8c7dba1a4a61b73b2550674cc7994e39"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9f402f539105be746d87d45aa2198eac69519fd984a602b71c59a924b53fdbe0"
    "ko"
  end
  language "nl" do
    sha256 "9f787f5dd6819155b2aed99b17904c9cbf026eccb57e53db2e2166c4d2d2223b"
    "nl"
  end
  language "pt-BR" do
    sha256 "8b2670f259b4b75b4f75511848f83a674330426e2c551d1526e6632c061986fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "8b2bedf82b61597bf04093d200cfbd9e2be3b98e0101f5ba7da7e4d3b87a33a5"
    "ru"
  end
  language "uk" do
    sha256 "7afc7594454389fd5fdbc208f5e58d540d5656ab336189dd59fbc293f4bd995d"
    "uk"
  end
  language "zh-TW" do
    sha256 "769bb025ff9e8c38a81a865dbd6d2b7f361a23b6bff93177317965a1dedee163"
    "zh-TW"
  end
  language "zh" do
    sha256 "0023a97d9e618bf7b48627ea60b26e73ff1858ad79df24b7a30dc82c3fe67b61"
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
