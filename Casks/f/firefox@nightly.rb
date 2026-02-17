cask "firefox@nightly" do
  version "149.0a1,2026-02-16-21-12-57"

  language "ca" do
    sha256 "3041e3aa8cc1fcb7cc8c21986e907fac163fac6adaf7e0a6a2766d12215ef233"
    "ca"
  end
  language "cs" do
    sha256 "a7a67be3011fd1ee4ae5fe4a089297d150b64570170169fc73eb4afcbe4b693c"
    "cs"
  end
  language "de" do
    sha256 "052d4e7b3276168134dd3043b3f4bb9e7b71f9fdd550b92468384b7a0a16ffa7"
    "de"
  end
  language "en-CA" do
    sha256 "87468f1e1ee020b4a7328e98a7de39cc6c58b71f837d2aafddafcda7ee9ac293"
    "en-CA"
  end
  language "en-GB" do
    sha256 "baf4d567d684cd53f4999cdfc365621ecb56cf48ccf11a84c7f456df980c41f9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "36a6c842772a93e3d6a8e630c7670106594aae8926576bc1e79f2e5e019ea422"
    "en-US"
  end
  language "es" do
    sha256 "41a03360a77b470bb4ccf336a57e26a7ca8a9b91d37335ae8f2ade80d15cb751"
    "es-ES"
  end
  language "fr" do
    sha256 "50a979ed06e807872676b66ee41e1d4bdf6aa33fb2c9b148f5931aaa69424deb"
    "fr"
  end
  language "it" do
    sha256 "26d50716b221d49e4dfde12e26f6280fca1730d2cebcb86bf484f0d37ee8b2a0"
    "it"
  end
  language "ja" do
    sha256 "1e237f99c1e829cf28b744d93d84e914155c3512cadb5ac8dea57930b1bfdcdd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c09be110861ff0e9825f739644834cb52bdb4b33b9d9094770f05deb90694e2d"
    "ko"
  end
  language "nl" do
    sha256 "c3328314103db16c3315885d63235a3d495d13ddd8d929f32079f0258d15fa80"
    "nl"
  end
  language "pt-BR" do
    sha256 "b5f6eb280e5330f9695dacfa537b47896716720a488df6f604ffe1e552cec23f"
    "pt-BR"
  end
  language "ru" do
    sha256 "f671c6398844b17e979d610c07c9f15b7ec31a281c9a861c32625a18acfb1a08"
    "ru"
  end
  language "uk" do
    sha256 "e4602971b18e5975c7fbff7a6c5428fbe250d2c32def71d420f9bf24efc4456d"
    "uk"
  end
  language "zh-TW" do
    sha256 "0107f909d7d1b503a09ae2ebaade597d442d15bc68fdb9b1db491c1d25a79d16"
    "zh-TW"
  end
  language "zh" do
    sha256 "fd8728ea2b66a64ed82ebb4e740425e2e2360fc672c692161aa7dfe473722c75"
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
