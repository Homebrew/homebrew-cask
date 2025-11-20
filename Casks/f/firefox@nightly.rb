cask "firefox@nightly" do
  version "147.0a1,2025-11-19-21-53-22"

  language "ca" do
    sha256 "5cf0149fc68e11335db5ea035436a3efb81c31a6e262e17efea1dcc05cadae22"
    "ca"
  end
  language "cs" do
    sha256 "a15984e7816e1d92019ddb97dc3658f91aced579510f8e54f756e3192dbdc464"
    "cs"
  end
  language "de" do
    sha256 "a14e02123137c19f82969ac8234fd5e55a075dfe669a4167733adb865a8f95f8"
    "de"
  end
  language "en-CA" do
    sha256 "9d0bc3b56dca7d0b7ec56acb53b900f173b0ee6e9e4b8b230e608a0fe00681e5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8b09f404a03ec71583346fb4e934aa062ebf5e90eb0a81e671c3aa98d3bf97dc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b7bf89f59e63edee8ac54a8e848abf75eb142ae7d318e7870747838c4748377d"
    "en-US"
  end
  language "es" do
    sha256 "406694f51b3e5ccfbd3ae3bf3a74a43f4de445ae5671dc7dce43c4d9f4d180ee"
    "es-ES"
  end
  language "fr" do
    sha256 "d605e2035345abbe1c1f6f3bc0380847fee5beaed32bda9440968678e7b87406"
    "fr"
  end
  language "it" do
    sha256 "e5ab839f16e88d658a2aaa71f0770209fcd2b9c978366061bc32a865b716ec09"
    "it"
  end
  language "ja" do
    sha256 "f2d15f07f112553273c2f81428e885cb7508e23c312fd925061d335976eeef7c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1edc052df13b9faa170a3aff5c997332f25147d449d3a2d523490c78134b5b6d"
    "ko"
  end
  language "nl" do
    sha256 "78e7ede7af4027dd4a0dfe485c26c148ae1445e1b455bb96f71fadfe5a059d00"
    "nl"
  end
  language "pt-BR" do
    sha256 "b60f483b1e4367287799dee986428d9abf768c281553e3989f4ed72e165119e7"
    "pt-BR"
  end
  language "ru" do
    sha256 "681f2bd117d30b8c7c1b64d119d6d5919974d726eb8b223d2cfdbcc2124b1218"
    "ru"
  end
  language "uk" do
    sha256 "c2c425d31ead6e8e790c8b66d49d1bee9824083800c99ca4da0b14f9fac51524"
    "uk"
  end
  language "zh-TW" do
    sha256 "b78b945f0fedb258bcf9d7dc0b119841b59abb1cc950f4e64f310ae73f733fe5"
    "zh-TW"
  end
  language "zh" do
    sha256 "98aae9ee681167cf1b30c6027b67a5d18a3f7dd9fc69545987ef00b59fcfd685"
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
