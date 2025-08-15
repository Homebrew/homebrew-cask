cask "firefox@nightly" do
  version "143.0a1,2025-08-14-21-33-09"

  language "ca" do
    sha256 "9a34690dfe84b506ce4cfa5f48d2e86033d665bb070c1c2f9da10a6332181997"
    "ca"
  end
  language "cs" do
    sha256 "bccb55c94dda70deb2847dc91c35c6ae0f8abdd7ef94d2bc07a1870cafbf5d65"
    "cs"
  end
  language "de" do
    sha256 "82fb12e52b75e84121e5c3aa027d814833cbd273acaa45889925a2aa47e3be1c"
    "de"
  end
  language "en-CA" do
    sha256 "a461d161392275afcc50f25f0fcf33e0ba0298d045f02a8bfa531c48c995552b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ac1b190d1bb8f36165522d20ab8a9b30e432b50d4655163b33e7143e8fbf3499"
    "en-GB"
  end
  language "en", default: true do
    sha256 "671a8a08ed1eb6ab1abc0123c5fd47309090dd051f0ad05ff7a31831ae9d235e"
    "en-US"
  end
  language "es" do
    sha256 "0f183916e46eaaae790ac2c226caf4fed2788853750535e17f26089f9d144698"
    "es-ES"
  end
  language "fr" do
    sha256 "69a297bd29959eb4f79defe322d1fd7e571c4f0a91cd51818d12f1997d9e5168"
    "fr"
  end
  language "it" do
    sha256 "32a0da789c9469f3bc8b520c425a1e0d7b1fdbf8b4c9ea0b9d3194ca52aafd02"
    "it"
  end
  language "ja" do
    sha256 "c941c51428746be540056477a9113df2ca4fe623d3f9493120a1aa74a380ca4c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6e846b28bf62f35d522084c345b31e14ec84c29a2a099c088e3bf7a93a6587ef"
    "ko"
  end
  language "nl" do
    sha256 "52c307c331216e8ac094c116c8cc628d6a374951a89bd5c61b35fbbd5976cfcc"
    "nl"
  end
  language "pt-BR" do
    sha256 "7844e6729d3b469c4cfa616c5ed5c98e4a94168ee70af673a39a5dccd099d372"
    "pt-BR"
  end
  language "ru" do
    sha256 "c0ac05bb48461d2e1995e3c972e6babc6e062d8b936501f329181145075176fd"
    "ru"
  end
  language "uk" do
    sha256 "846e94dabc6b04c5c6c6f1857debdcff8ee8142c851a8af2c1d0751cdbce000a"
    "uk"
  end
  language "zh-TW" do
    sha256 "1678bcf896e25a7419f6593fdb20269e15da06cbaa07abc59f084ba6663e68a2"
    "zh-TW"
  end
  language "zh" do
    sha256 "ea84d3d5749cd5413b65b2d20272e04dcf93f0e04c496bb0f32773c170e20353"
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
