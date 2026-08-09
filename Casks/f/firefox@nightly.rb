cask "firefox@nightly" do
  version "155.0a1,2026-08-09-09-46-48"

  language "ca" do
    sha256 "c9df048be47ff8bd6ab1f06e64f5a97c937f715f8dfe0a179349e2301ffe975a"
    "ca"
  end
  language "cs" do
    sha256 "96c07bb7c0c5f1f156a6796ec8d886442238ce28b14201563c42e4437fc85441"
    "cs"
  end
  language "de" do
    sha256 "d44778579c87d2c49deab0170919194f9c2051097df8e062e2ab3a8a81cf5cbf"
    "de"
  end
  language "en-CA" do
    sha256 "250a2f1f2558e806024ef9075a6f3e07c6402400e8c65b96867cfbeaf0cc7413"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b1b1f82d01ef049ba42838b97456b0ad38a76b82cd4e8c59cc618452b8d75a8e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9773d3d251751cab77a7d6ac689036449a567fb242e1fb60f6eb1972ced19b73"
    "en-US"
  end
  language "es" do
    sha256 "c94627fefe82ff2607fb629f83d391a1ef500ed221d4a040e4d23054212478e0"
    "es-ES"
  end
  language "fr" do
    sha256 "57c5947be7dbeefaea4def087058a51232f2ed89b2478de990f666cbc6c2b58b"
    "fr"
  end
  language "it" do
    sha256 "44d8bd153549052e8c1dbb1b0e1dedcbc37d0597d9a2ef8d7092a34a67f973fe"
    "it"
  end
  language "ja" do
    sha256 "b0fee325becdc8a2978fb8ae0d443bfb18a9792039f324a7ee87fea645f089b8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c4ef008e17e8b7ed8389a54f7f58497c1ee21074a2d881da6449772400b9bff1"
    "ko"
  end
  language "nl" do
    sha256 "0b9922d679afccb2dbc4c16c8df8934bde5b0ae6c57a39e3b491c0a095a51b48"
    "nl"
  end
  language "pt-BR" do
    sha256 "ca4baafea94d3200eabaee1b34b789341d1338a08dddf63ee785e6eebd5d87a1"
    "pt-BR"
  end
  language "ru" do
    sha256 "3566fda052c81be05ef899ae6f94f6b37e67a39afac5cdd5591547a917a57754"
    "ru"
  end
  language "uk" do
    sha256 "75f58c63466f8af5a85e6ca5422bfe89a91f074adbba27a46057bef4011abf40"
    "uk"
  end
  language "zh-TW" do
    sha256 "d20e5674ee985c9cdd9fbe6815d9937748e8d7a210c37b553f6abe8eacdc7c46"
    "zh-TW"
  end
  language "zh" do
    sha256 "c0738854944e3ed117574bedc3b3ff5e46c6cc8dfd62f58b192c58ecf2e63ad7"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
