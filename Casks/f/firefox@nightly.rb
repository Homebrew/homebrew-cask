cask "firefox@nightly" do
  version "143.0a1,2025-07-30-21-32-01"

  language "ca" do
    sha256 "aa37cec89d801d4934e0fb9d70dd55d1de2710fb86f1241a0c8d0ddf563a5979"
    "ca"
  end
  language "cs" do
    sha256 "94fa552150fd3c647017b445216dc4e29d6e816c23a7197a6fcb0eb130dc391e"
    "cs"
  end
  language "de" do
    sha256 "48210239cc697d45efaf4e9c7f66564cac02c851d90ea7bd552402148bddf5f8"
    "de"
  end
  language "en-CA" do
    sha256 "769144eb2c95f68f965e17ed951d51f1c8bff8b6041aa6399511e30de6c7dd13"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aeb7de5cc62833913555fe31c18e16a61a6c7245e20b6c13029bee7d40b9976c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c507c0fadd7605a9d15a2cb332a14a2806978984eea041fe81486aba9d915a48"
    "en-US"
  end
  language "es" do
    sha256 "79654034551948918f2a82c3222fd0dcaa55e90f6c3ec7aeaaa3b4d411dd8fab"
    "es-ES"
  end
  language "fr" do
    sha256 "806bfc063b996b594a1fce11fc2fbea0008ef494f2e60a78c945addb247250aa"
    "fr"
  end
  language "it" do
    sha256 "f4843584b1828c629541397b98559fb3bdfde0029c25e02da7f8fa1b3029c695"
    "it"
  end
  language "ja" do
    sha256 "0b1b40f89fb9045e0b6b3d00932132b7784e34c0f5f8c3469a4c511ddd06df82"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fea684416c02e8ed7d55a3e63755e0cf0b6289b25bba89c607ca2442c7022c67"
    "ko"
  end
  language "nl" do
    sha256 "fabaca13bdbe2fc8fcc8b4b498bacda99c2d1221293fb457b168d4186c661afa"
    "nl"
  end
  language "pt-BR" do
    sha256 "bca15764d8f668eb2ff2aa24d575a204dace81524d9100e5ec60c448693a3d69"
    "pt-BR"
  end
  language "ru" do
    sha256 "4840653a5e23b1a9c1c027ba1ac3c71a09aa034bc7f5dcabf7dd1a6c88e31407"
    "ru"
  end
  language "uk" do
    sha256 "e87959d9b34e60cb7409816b78e9e51bf1ff7c8e489b4b326096a267fbe1b916"
    "uk"
  end
  language "zh-TW" do
    sha256 "8da975c49812941fa72174b521546fb06acbed95b48493401c1368ce85802903"
    "zh-TW"
  end
  language "zh" do
    sha256 "6e4b1e10a081619cc17a6651e13a3c50585c275e528ea3e81a3c7a706a7deae1"
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
