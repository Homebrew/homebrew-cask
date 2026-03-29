cask "firefox@nightly" do
  version "151.0a1,2026-03-28-20-03-38"

  language "ca" do
    sha256 "3675f29e3410ead1efcd1a8de92fd64d6900097d4d61664043887dc780972b52"
    "ca"
  end
  language "cs" do
    sha256 "76c214130536db024dfc6099a1f8346c912d9ba3878cf8d0069edd0595b96e00"
    "cs"
  end
  language "de" do
    sha256 "e4cbafe92bc1074fedb2cbd7beda1dad71c3ef6b617d3feefcf855c0ea486093"
    "de"
  end
  language "en-CA" do
    sha256 "7ee7d9cdff3ce59be45500fb39956adbdd32cb587d623fcf2cc855bc4f34ce1e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "46679a41cd7ea57a0ce69a53aabd6e0d7f36dbb3a2ba4c83a2942649225a3d16"
    "en-GB"
  end
  language "en", default: true do
    sha256 "352cb1e42c339a4cbdb3478e4b74f42f829b0c7b9d2c281bc59db3d902b82caf"
    "en-US"
  end
  language "es" do
    sha256 "e2df90f6ac7c01fedf1af7d0589927e332c75fb8bff53255f0d7145116ecc184"
    "es-ES"
  end
  language "fr" do
    sha256 "f1b0b322da1de2441cd89b6c3fa2c8a5e544334f2bb1dd64d669d2e6f8cadf36"
    "fr"
  end
  language "it" do
    sha256 "e2365386ec4367f309ed5a7efddbef5b050d2ad5059cdb904739a5a3541ba200"
    "it"
  end
  language "ja" do
    sha256 "fcf6928015083aa669940b54ffd57299df495fa6e198548c736dcce6e8fdf429"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b89b984b4203e094db8fd8e83d73258036524eb0a6155d7d79ff82d5bcba0887"
    "ko"
  end
  language "nl" do
    sha256 "1ba8c1c60d817eee1cc2c313d266e7789a907e09add66a801c4af3d03d2fbb7c"
    "nl"
  end
  language "pt-BR" do
    sha256 "653bd12e15cc00b262aec15942d316122153760df5d97c1c963744846d0a1a84"
    "pt-BR"
  end
  language "ru" do
    sha256 "e84f1ebe8240581858b8b699a04e30cdccf7dbb200508716f2050c386f1d6251"
    "ru"
  end
  language "uk" do
    sha256 "c2daab217b03ac6986b3ecaf2b44336a50e3a8779a3e64c0c541f56783724760"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b09bb4f04243f868d6571c59c9d07dd6beb3a48223090f2add8f99958d3329d"
    "zh-TW"
  end
  language "zh" do
    sha256 "afe67c341140a84c539f19e679fec4d0b19b0e95f8205cb05c7235ddbc9661a8"
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
