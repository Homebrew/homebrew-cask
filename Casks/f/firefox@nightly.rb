cask "firefox@nightly" do
  version "152.0a1,2026-05-13-20-52-07"

  language "ca" do
    sha256 "1684867dc516e1c36bff2450d1079d6402c7a45cde82266a0d5b5037fd337297"
    "ca"
  end
  language "cs" do
    sha256 "655ac1654e18dd1c0f588efcd791f3d6804163b39e5e0d22f111ca2d85ab9645"
    "cs"
  end
  language "de" do
    sha256 "cc933e093a86a73285d5c9ea9497c7fb8c5c1acf7008f26b37430888fd77e108"
    "de"
  end
  language "en-CA" do
    sha256 "1439b1f1107058482528e0d2632cc3b23de4c46bf7a828bc809852df69be65c4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4fd420712e81acc9c83b82b4006ab4457a7cb0e37404c53622d4e09d15d41c3e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "af24123d2b8885a93f2b119d0675f0d4b6e598318ff93e446fac5c80571bd9ac"
    "en-US"
  end
  language "es" do
    sha256 "4efc8090b684fbdeed97060e9f2881d757d0cb10af2ad42193814aaf580a4e0a"
    "es-ES"
  end
  language "fr" do
    sha256 "91da2119bf0cb479c37334b1201ee9770cc109ee43fe01431c5e450f52b7a270"
    "fr"
  end
  language "it" do
    sha256 "659448a1008a79f659066f96d1f9b03cf1180f82b099581f2ad18fb1533269b7"
    "it"
  end
  language "ja" do
    sha256 "37fe067b5a0eaa14b12e89ef41d97817f011989df87f4cf9ca95bbb638bcec30"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e3aa1a818ee6170b2547d35432f50aa782b029b2a06e7ecb564e8c2019d381fb"
    "ko"
  end
  language "nl" do
    sha256 "e076d67c75468b1b455070fd8f908e08f4b015dd62c93a04658dcdf008d30f26"
    "nl"
  end
  language "pt-BR" do
    sha256 "58560b8f0c30becad78804c2fca82226429ae4db82d79d30021a1fcbc24fff13"
    "pt-BR"
  end
  language "ru" do
    sha256 "c399ba160cf9ac14b20d4f457c24fe02146cc3611c69a6a3428a667433d80301"
    "ru"
  end
  language "uk" do
    sha256 "ce67c312ec4af53139fecbcaf410aed77ddd77064fd00f52966056deae5cc6aa"
    "uk"
  end
  language "zh-TW" do
    sha256 "90d468b5dc18ee753e8c4fee15f5be80389fa40b8df3e8286629a4997a1f1c18"
    "zh-TW"
  end
  language "zh" do
    sha256 "0d6d67bdd8db247a109d44acb43d1b7d5260067f0f657276242c43d84042c011"
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
