cask "firefox@nightly" do
  version "141.0a1,2025-05-26-16-56-22"

  language "ca" do
    sha256 "790624dab0151964f50854787a4b166e7b9a7093b38f27ea9c5f23ff69e270f7"
    "ca"
  end
  language "cs" do
    sha256 "32fdc81cfa9792515129e246fd0e3d8a6138c837fe26305c79312e469a01bdd1"
    "cs"
  end
  language "de" do
    sha256 "5f9f1d9aac4265e60b42914c74bbe7aba1f88c1371785ddceb2e5900159db13a"
    "de"
  end
  language "en-CA" do
    sha256 "b6a0d2125bfa7257ceac37bf0205df17b68d287b75217f7780fda09799f255e4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6ac2e9505ff90dcfbc4725911ff1580b8d4ff653abf7c971eb7d6a6e2e32d282"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d65ad9bccfe09af65f99fd81135e4680d64eef8392851dc3d7361563c0546cb4"
    "en-US"
  end
  language "es" do
    sha256 "66cffd2c1d832b113f67269ea7142131b08aeb5ce89c3db9020862cd104ad5bd"
    "es-ES"
  end
  language "fr" do
    sha256 "073d1a44e57462741eb5cedde666ee45538c9939ef5559c480be412391dbb377"
    "fr"
  end
  language "it" do
    sha256 "4e79c2c72a4f8d708cac632d5ac4b887d78dbc4206235a8236019e2d6c41260d"
    "it"
  end
  language "ja" do
    sha256 "43da33535392fc2e82183604aa79424e9be46517f1da481c2863190d9724e9fe"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e18fabd4a009db7fd545e73fda0963f2c1a8168c768fd4e6324bcb8662102ab8"
    "ko"
  end
  language "nl" do
    sha256 "b9d9c45305dd8f69011153271d924761155daa398aea3d71f3d153dbc03889e3"
    "nl"
  end
  language "pt-BR" do
    sha256 "c244ba161fd9436413ad75a14cfc2a9a5af622c078948f04b62afaede2b2bf9e"
    "pt-BR"
  end
  language "ru" do
    sha256 "c8536d0e19d05141e7034cf21324ff650921189f3152f5291ded7d1359a582f3"
    "ru"
  end
  language "uk" do
    sha256 "65d9ca9fa54a6814d0e0c4013cc3247c72e7a8c495d1ad45c8bc9002311ca470"
    "uk"
  end
  language "zh-TW" do
    sha256 "64a78705c4a8937fdbadadf1dac95de63e1a3be42ad684501a266434b10e8700"
    "zh-TW"
  end
  language "zh" do
    sha256 "2ea1a414d545ed6643c497f8fd8a1e6431e3536eaeb78f2e9f11f5b0acec211a"
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
