cask "firefox@nightly" do
  version "139.0a1,2025-04-21-21-35-26"

  language "ca" do
    sha256 "b044122805402839337f311d12fd442356a08220783e45b1c5004cd1c47ff02c"
    "ca"
  end
  language "cs" do
    sha256 "f128b0ec958401b40151b0a06efe7021d6e814bd95777e2ca55f4002c645c64d"
    "cs"
  end
  language "de" do
    sha256 "45becefcc8895a9ae6d86bc55be9c86eeed1be730a9a7da12b8810f0e4c90837"
    "de"
  end
  language "en-CA" do
    sha256 "b9787b7c5ba180191b97074b4af10a47f3605b005b10a4a4fc9a538afd05900e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "83cde9f39b370f77cef8e813071d53281f2ecb1bcfabf54beaa33382970312b7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "720f0f712bad905a9614bb8bdc617adeef55e8937a397034a7448d4e5969d6d5"
    "en-US"
  end
  language "es" do
    sha256 "bda45f0d0e33f014438d447471adf609b7e5d202c742e63aea51976a63ae9daf"
    "es-ES"
  end
  language "fr" do
    sha256 "936e211ce07ed798daae73366e26332f23ca8f066715220875a3aaba3094962a"
    "fr"
  end
  language "it" do
    sha256 "0f8ac7becfcd6b741e984fc9aea7283e1f08ff32f5e5c10f4ee813411ac6c201"
    "it"
  end
  language "ja" do
    sha256 "5408e4ab7a2a808c302f7f4a305c25594d298af48e49188b52a329a606bebcbd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "20e98e2414e0407f2d38497aafda0fe94da55c48863be34a997961722e0b5cef"
    "ko"
  end
  language "nl" do
    sha256 "ad540fe1764467fe079367f7c6c920c8409db54b263c9bed413b6c2ce0d25822"
    "nl"
  end
  language "pt-BR" do
    sha256 "535668d040ef9343fb9d25eac173baec6579aa0e300a300522232e4d5ffc9e94"
    "pt-BR"
  end
  language "ru" do
    sha256 "d74d2d463d7ab8da415b55b7a407494474c2a5f29b9f448ff93b62c7cbeb2dc4"
    "ru"
  end
  language "uk" do
    sha256 "f26e4d29d982d31fc52063060ddeb25c403ed0e5803d522ea2e110b80242acca"
    "uk"
  end
  language "zh-TW" do
    sha256 "e5a63540c99f0be28507f6bf9e4b77bbfd2cdc97e4f725e74fc0b021bd4432d2"
    "zh-TW"
  end
  language "zh" do
    sha256 "012dfee696ab9cce7e960f3c7d76a33a1fb7e8056012547f6a32ae92a3717a64"
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
  depends_on macos: ">= :catalina"

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
