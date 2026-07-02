cask "firefox@nightly" do
  version "154.0a1,2026-07-02-09-43-50"

  language "ca" do
    sha256 "f6c91acf5835e6e217968338b7be7cefa7874d22d1d84d6c420623430737d285"
    "ca"
  end
  language "cs" do
    sha256 "861545ec256f8cbc534522fb7769ea2063ba57f54559d5a0c0deda23dace4de8"
    "cs"
  end
  language "de" do
    sha256 "de34c2d59eadf5684c1356c452e7d90c31d4b144f21752149630859a376c8b40"
    "de"
  end
  language "en-CA" do
    sha256 "af555332f5069096aa2f5ececd1c467d5f8337ccfa730f9a9ec6ff8103dd8abc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e374b88145e6fd395ffdcc2190ae6376622855706b91144de3dc73ba10c048e5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "64f04f5facb656c70f27b74dadfee22f18cb5c251140dbf54263a60f7c96e960"
    "en-US"
  end
  language "es" do
    sha256 "b219c7569806a4f2897cfb9417ca03ad37a6179562b513448d6bdeae6761216a"
    "es-ES"
  end
  language "fr" do
    sha256 "866977aede0bc7f24a64731c09971e711ec2d6221320c0346aea0774a652101b"
    "fr"
  end
  language "it" do
    sha256 "018da69b676edab8082fc1cc041b08c603cd6782036348b32294ce85d5714606"
    "it"
  end
  language "ja" do
    sha256 "8ada2452e7f961cda8cfc8d1ee07c3bcae8d08497abd096838be03864f1035cf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b96a3638661c3ba853295a55fb597dac4e21c1b34f757236a6e22423f2dc8ca9"
    "ko"
  end
  language "nl" do
    sha256 "199d9d48c51a9f000456642d3b7c0851c73ccfd0273f0b1205e9de8e7c96124a"
    "nl"
  end
  language "pt-BR" do
    sha256 "3057bbe6290e430976062cabb367925860511bef932a78f8f7c46cd6d40d80a1"
    "pt-BR"
  end
  language "ru" do
    sha256 "4ae32a3f4682e5de6f37d588e6bf0231b828df69f48ae68a72029d5c1548b155"
    "ru"
  end
  language "uk" do
    sha256 "fbad8adbce21120886b3e8a00677ba451b575a11790bac51688738aa187cf3ac"
    "uk"
  end
  language "zh-TW" do
    sha256 "a065d9ffb111ca73b5de29d2b623f4b7c5b647209bd1f2e56715cb2c321a4d76"
    "zh-TW"
  end
  language "zh" do
    sha256 "b05e10c2cc49fa47d30492fb39b5894eed35010cc7943b1eccf7cb54e0582c0a"
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
