cask "firefox@nightly" do
  version "149.0a1,2026-02-11-09-39-27"

  language "ca" do
    sha256 "8200ab785981fdfa878df9d2eab5cb080297c3c4ef793550ca9050be585a3a6e"
    "ca"
  end
  language "cs" do
    sha256 "6ef1397292bfbecf567d1e3fb6e455555607c3020af66ebc3f22e611dcbf0277"
    "cs"
  end
  language "de" do
    sha256 "fdb98fc33c28fdb2a6474933c5a37f1b5590a6600fe53a58dccd40730727542e"
    "de"
  end
  language "en-CA" do
    sha256 "a81f64039834ad5762042150b98da78b2b902bbdb7bebe7d2f4ee287d61d2328"
    "en-CA"
  end
  language "en-GB" do
    sha256 "be5cad93b9628cc582edff10cb38871ae56aab5067c807eb1a379fd5ea67e970"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e1c312c58e2e20ae553ac3a2d1399b977bb735f5bc612f76da75492eedecc457"
    "en-US"
  end
  language "es" do
    sha256 "7f1ea424fb273edbf2f81f6d444424e228f77e108e37b2d54a463479670bf0e3"
    "es-ES"
  end
  language "fr" do
    sha256 "e729ea432f19f5a2ee54b114ebd9606a5a8b00de222f272629b73bf16a57c2fb"
    "fr"
  end
  language "it" do
    sha256 "482b448342ed15788244c1cf4ccffa6193efb5575df2ee674ef764d43e68a9a0"
    "it"
  end
  language "ja" do
    sha256 "50c0192e322b8510dd992c7d077f4d43560cd295d33f94d286e55207b93b8a33"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1b0cc896a4a5304652639fcd0cd34efd2d85aabdc3b6839255fb025998d1aa14"
    "ko"
  end
  language "nl" do
    sha256 "8315bd6f027aab7b83df7149457d46a7df3855c9d59b99d78804973bdde2ba18"
    "nl"
  end
  language "pt-BR" do
    sha256 "654085fe5e00514258edcc37421755ba13fd1a374f1c93f11bd842b9e71f48bb"
    "pt-BR"
  end
  language "ru" do
    sha256 "f62cfad991e000c7ee9fe144824d87e121190749a5889fb31ba87d0ba226ec51"
    "ru"
  end
  language "uk" do
    sha256 "60de869643a5ceed6e0634612109b1274d858ad76550a6e462ecde6d8ae26ff8"
    "uk"
  end
  language "zh-TW" do
    sha256 "93b7746111fd0cee4b023130e5dd4e84dd1af617cf3fcfb8a6c09e93729f31d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "ba1db9ee962d9e0465b7c95a31aa28cbf2a1775021dae7a289e0f9d8a5342fb1"
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
