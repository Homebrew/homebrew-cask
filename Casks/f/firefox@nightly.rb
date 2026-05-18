cask "firefox@nightly" do
  version "152.0a1,2026-05-17-20-36-05"

  language "ca" do
    sha256 "4f8db5f6de29817b323eb1b6c666768792be342b793dce4151dd13a238a60b44"
    "ca"
  end
  language "cs" do
    sha256 "d67b548c4ddd18b372eb0ce50759aa57bca71f8d823003d4bc9b36c081fa27d8"
    "cs"
  end
  language "de" do
    sha256 "84c252a3cf87c1e649595c0d615fbbc5b6d9df50c9438a1c6fac8f30db7d8f26"
    "de"
  end
  language "en-CA" do
    sha256 "716a10baa3daace50784d10feeb6756fbbd40dc43ea1b52de2b7ae3a409141b7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8d01881d731ae61e53af7fe51605a590dfd61e15dff030a3cba28550fc7057db"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5fea6382b7750bb6af02f81d62059ea4357e73dafb218d225dc3f5f984701879"
    "en-US"
  end
  language "es" do
    sha256 "9fac427ec2f6373726196f0a5b9990338a9b6012627eb193c6d7bd662bce82bd"
    "es-ES"
  end
  language "fr" do
    sha256 "475e987842e1fa850c3fcf4ec0b132b5fe535f29b7bb0a4a601dc7a532f7126a"
    "fr"
  end
  language "it" do
    sha256 "d17e15a41711309a50efadb43096e4a282526078a53fba51e1e5d7429d8a9660"
    "it"
  end
  language "ja" do
    sha256 "d79c2beac13d82eeb9d5c425e1180bb6150b43dc395f3479a479d6bcc88185d8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "221ccbc4db0b007e2dfad5ab6d2b6b4e9647ad217e6a3e2fa47e5c94f9175e9f"
    "ko"
  end
  language "nl" do
    sha256 "f0ab57b224f606c526f72dde7c82243e5a927c7889b51403fd51436a41bdb3c1"
    "nl"
  end
  language "pt-BR" do
    sha256 "7ff831c52210c6271bfcb83444f8537b509f3fe05d600bde683755de7b96fdc6"
    "pt-BR"
  end
  language "ru" do
    sha256 "79ba66e81fb23fa778efb69d5d8f298d6b3cc4ba24b3fef4ae5695139ec948cb"
    "ru"
  end
  language "uk" do
    sha256 "c024389ac3bb49ee67ddfc3927b088f079e28f83b4dc1f96af4c9aac82c696c0"
    "uk"
  end
  language "zh-TW" do
    sha256 "a17fc46a53c161fc78447d36c4e43ce5585f187e38c3f4d153370b440287a355"
    "zh-TW"
  end
  language "zh" do
    sha256 "7283f116489afbe0074d82c77325b25201a95ac91812f0f2483427e7a0ad9662"
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
