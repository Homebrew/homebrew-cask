cask "firefox@nightly" do
  version "148.0a1,2026-01-05-21-10-17"

  language "ca" do
    sha256 "9f22ba20d0fdbe3053fdffd808d9613f4aa6d824589a3da0bd23db7a3ce5b0ed"
    "ca"
  end
  language "cs" do
    sha256 "e635bf0e83a7a51341e64f1c853b97abd6164317f519265a60313b88fbc2595f"
    "cs"
  end
  language "de" do
    sha256 "4045ed6af45e48e6e5d85086dda0dfd30abc6b478cb21ccf504fab7db062e2d6"
    "de"
  end
  language "en-CA" do
    sha256 "42c29d9a1d2d2efbe7c00f5d0833441b13de4ea4b062933c2bc9708a4d4bf147"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b26df6af91fce3252c6ddaac2ecb91118dd8b918c399fbe802eadfc2708c5efc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5ba253317d866da5264b2c1f88c6ecbdf23420cdaf601c4d99a436623635bc7a"
    "en-US"
  end
  language "es" do
    sha256 "155cbb1d26bbc8d7acc9576374fea93008b8322cded9c2fca11dba529b7c6e6e"
    "es-ES"
  end
  language "fr" do
    sha256 "4aecbda245ab3c882115939a727051ee2a4a96c9300335cc119161c555c9f110"
    "fr"
  end
  language "it" do
    sha256 "c84843bd5b61bb5b7050ac39ed3bee8ef1c4d1206ad8bddd501f2d47942c1e3f"
    "it"
  end
  language "ja" do
    sha256 "c807c539e3e5d1746b6675b2067d2b22509620e563cf2a5a6eb0fb5c4dc0dc42"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "34867385c0343f862ecfb5cec890edc749f474f7c1c22b9bf085e424ad546a14"
    "ko"
  end
  language "nl" do
    sha256 "efdd044b5f486574537e46b8046a0f67a5d8ba1f716fe693e7dc9311f8905cb5"
    "nl"
  end
  language "pt-BR" do
    sha256 "9c926537d3106e2516652cd29504833458191e0f0dceab05f4a1911a1ad10e58"
    "pt-BR"
  end
  language "ru" do
    sha256 "a4ce364ceaaeacafba41bd970eb3766bfecb351b4d6365d9c1721ddca32a81e4"
    "ru"
  end
  language "uk" do
    sha256 "5f8711de456d1f1b632dc40f5ca304373963c944e2e419cab9b48f589d17bca6"
    "uk"
  end
  language "zh-TW" do
    sha256 "abddfdb23a495949164a24bcc4158b9456cbcf455ad3126f9739fd21c5d06d61"
    "zh-TW"
  end
  language "zh" do
    sha256 "c7933bfe756fc021f6b5d2b35714706f82f8844f8132422155f45323f6857353"
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
