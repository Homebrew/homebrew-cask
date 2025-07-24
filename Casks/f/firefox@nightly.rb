cask "firefox@nightly" do
  version "143.0a1,2025-07-24-09-34-17"

  language "ca" do
    sha256 "395e534a3d84e2a655b11d95987879e098c4fd95610918f8e4d99e39372eca10"
    "ca"
  end
  language "cs" do
    sha256 "1965486507fc2ef4eaf22b10ce4dea3c6850f9b6ef547c62b535c18154eccf03"
    "cs"
  end
  language "de" do
    sha256 "64b87d17f177f96ccf113966f9ae759eab7da127fc9bae43ee6944c11a153ed1"
    "de"
  end
  language "en-CA" do
    sha256 "7130769a475150cc3c65e448f234da5b2fa6d682008c9be55d28c6fbbccf414e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "303cfd055ffd88f0839e3af3c3e782fec69fa3d55b27d663791212a2b82e5e39"
    "en-GB"
  end
  language "en", default: true do
    sha256 "979f6dc0a29998045e99085705ad215fd2cbf88627e4fa89f3e113961178bd19"
    "en-US"
  end
  language "es" do
    sha256 "d6f41edd66f042a64c85708f0da3cede181e89ca0678246cf3c21c192060d955"
    "es-ES"
  end
  language "fr" do
    sha256 "827205706a1556282dbc3bef96ce1bfe81a6d0543562b483b1e117b85fa270a9"
    "fr"
  end
  language "it" do
    sha256 "6d792f2cb43d876791a041118f791ade124d5853a3688e6ca939c86587a0b556"
    "it"
  end
  language "ja" do
    sha256 "14380812033aeaaa01d497f733a726a36d210fa5043886b02707608a4ceef459"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "decf59f685848e6746e477e66ba5eab066ca1176d388eb00acc002ae83d0a783"
    "ko"
  end
  language "nl" do
    sha256 "23cc4eb38c93d072dadc96848302998433e1e28a1dc8979a64e4557a0185dc3b"
    "nl"
  end
  language "pt-BR" do
    sha256 "fdd0fc38db6e767b3f2aeffb4fa3be48c208ef2aae7356b5f1c165dc97d581a9"
    "pt-BR"
  end
  language "ru" do
    sha256 "76b40cf20e2dce8accbd17835d549a444483a15e869df88f38f6e792762fb08e"
    "ru"
  end
  language "uk" do
    sha256 "c9f092a68627c5f70954594cca3dd180759a911083bf38d206b188becf424253"
    "uk"
  end
  language "zh-TW" do
    sha256 "4ff0331b9f1746d0f21673242c7b19c54278f8583748554c0b96e271f4787f8c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a99bd4479ac4743b355a3f0f6c122b22c78dce18cdabe8a8291fc61f5551ae8b"
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
