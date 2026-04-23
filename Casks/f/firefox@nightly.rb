cask "firefox@nightly" do
  version "152.0a1,2026-04-22-20-47-44"

  language "ca" do
    sha256 "cc722d7c6a2db70b738fcfb28fcba3ea58fa7e2fe9584534de6d06aec2728f21"
    "ca"
  end
  language "cs" do
    sha256 "b8f1d92fc200fc24015bc7e5abe6cb7a0aa58d1db81b6a0d0c1aac7cff22ab30"
    "cs"
  end
  language "de" do
    sha256 "bc6526ba6f9be28812f4e2037c6ea4c40716a8d89768322834c8a906858c4f97"
    "de"
  end
  language "en-CA" do
    sha256 "6aaa1fafc3eb5626cce07d3ebb69180c8271bbcbd4a18f6f5a4e3531fe90e67c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1d5b963720fe0e7dc83b845ea034679c2f16a154da6cea64a6ae3f56d21ab55a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da1f4a02c9e13d484c617cc567c14386a7001c73fa2cc1e1574e1fcb355f9e1e"
    "en-US"
  end
  language "es" do
    sha256 "b3cec5166b3ad2715ffca81085ecd7522d415da97f6a6d185d04b8f667529dff"
    "es-ES"
  end
  language "fr" do
    sha256 "3e27e5052d9d8807f50715e3fe00e74afe378fcf8693ea54dbbb2b5f733f98ba"
    "fr"
  end
  language "it" do
    sha256 "8c351f78653f2e7d37f408d6f5d914ef978a971c8ce9020ec2c9cbcdc751c2ff"
    "it"
  end
  language "ja" do
    sha256 "d2539b906f9c7cb894c64de1d4564f61352e4fe4ef16271c845c35603f67817a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "08a8e793ccccf322f8f9567bc6dc06dee31588960349464cee24524915f9cb35"
    "ko"
  end
  language "nl" do
    sha256 "48ff0997ca6895bb990f503df8770396c7f67e59d655704bec6a0face49ed76a"
    "nl"
  end
  language "pt-BR" do
    sha256 "6c653c3201e2d6a92cf08184eb9f2a70574b7cebb85504c9958fbad2935ced6b"
    "pt-BR"
  end
  language "ru" do
    sha256 "dc0533eeb3859483e1dd69f3cfbfa3a639aaee869d83288a898258ac23c07810"
    "ru"
  end
  language "uk" do
    sha256 "b53e9ed36c6dfd1fe9bb601b0da1eff19882fb134541ced72a18cfd5c1743526"
    "uk"
  end
  language "zh-TW" do
    sha256 "1b3be8718652344a518543e5f78f7dfa7a962bfb1f13a22cd4ba6b1fa6bc8418"
    "zh-TW"
  end
  language "zh" do
    sha256 "b1d2c6762255b28c097736ef599284ea01d829f5bc1da728c9ecc4d8908fcca9"
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
