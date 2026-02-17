cask "firefox@nightly" do
  version "149.0a1,2026-02-17-05-29-47"

  language "ca" do
    sha256 "081e94b4af2df5fa1f861a3f7e0ef96bd2dbcb0c52a4b28ac7c779bfb4acc7e8"
    "ca"
  end
  language "cs" do
    sha256 "ad2463129a48f33979f6723c43ae46dc306b71fc0f86c5dd546730fc5568b6d8"
    "cs"
  end
  language "de" do
    sha256 "e87f23b6aa63d36e7a92d7256a51f5a5e5198a40e51bda174acd526c0f5b5a2c"
    "de"
  end
  language "en-CA" do
    sha256 "f48e0a6215e701a13cd5d421e0da0b495f3ebc8307e8d69466ab5eaccba8dd6a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7e52e8be689e9f5484adf0861edc3bfa462db618c8cbbb9a5b968a419478acb1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fbd3d6b30da2702f113d9fe3f14f8744d7f577e4aa2635e1b0de2e9e4629470f"
    "en-US"
  end
  language "es" do
    sha256 "72b52ade6f6609c336b7964443c6037ac819cafec6a2a351a10ef83657d1be5d"
    "es-ES"
  end
  language "fr" do
    sha256 "a863aca70a8829d8ad28d40b2eee1babecf59860741bed08ae2221eb5d7a1a3f"
    "fr"
  end
  language "it" do
    sha256 "c5d779005efa0d3a2fe0eee904c4258aead10dce9ef612f8176ecc1a2d2bf336"
    "it"
  end
  language "ja" do
    sha256 "b1e22965b2a80ea439cdda1d73598139539b1fbafd70f86a26fac68d3d91db7d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "55a9a93491c7889acac3724ba52b3aeadd32296825e01cc6eee988b02069c531"
    "ko"
  end
  language "nl" do
    sha256 "e410d332a9222caa596b0f0cc76c3e79d4465cae84534a76f8235173875542ec"
    "nl"
  end
  language "pt-BR" do
    sha256 "8353ba01de74790fbf2405ea5fa7111a82a1374d2e2a8b0c135196942fc54daf"
    "pt-BR"
  end
  language "ru" do
    sha256 "5c7b43b22f342ce1e622b3bc0e0b759d6d86e8cc18195b1fc61b9a9ea9cdd905"
    "ru"
  end
  language "uk" do
    sha256 "e95b22ee3f16b139038497d3bdb681d868df2fe0b5c944395d3838c73af09b3b"
    "uk"
  end
  language "zh-TW" do
    sha256 "428488825fb5bf7847b03ade3cebc384102781df5e1528f93589de8ab9712d29"
    "zh-TW"
  end
  language "zh" do
    sha256 "246d65bd7c010f2767e72fbbd6ac9af074bcedca88e59fd29bc05d8d1f9f60d6"
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
