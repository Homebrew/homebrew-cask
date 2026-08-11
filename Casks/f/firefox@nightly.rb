cask "firefox@nightly" do
  version "155.0a1,2026-08-11-08-53-40"

  language "ca" do
    sha256 "f7ce3d7be31dc4c656baa5cc51d504f21e139f41196bbbbb1c80499fb011557a"
    "ca"
  end
  language "cs" do
    sha256 "dfcb41faaf578c2bd4fa94a467bfdd7a29f62e68a2077f39048ccec29af02120"
    "cs"
  end
  language "de" do
    sha256 "1800ee26f8af21cd8e99740452fd0741fed7ea70502229ab6419c130ceb0257b"
    "de"
  end
  language "en-CA" do
    sha256 "30afd803aa8189d402fca5c84203d636aa5311678f3b2e7ff198050dbe1c9b92"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b0d766dfd39a12ce90ea557949f5bd3c11a472c991e874280f5799716939d929"
    "en-GB"
  end
  language "en", default: true do
    sha256 "95fdeb33dac877b7f195d58ed6d9de9a925e59e1f910f4ed09259548133a178d"
    "en-US"
  end
  language "es" do
    sha256 "ef354b58f346af743717c414facf7ba569be0f966c50c89ba0e862e435deba56"
    "es-ES"
  end
  language "fr" do
    sha256 "6d5d72d625ad8245c6f32d82d8ead6df212f12c1ddb75592c3adbce508ccd995"
    "fr"
  end
  language "it" do
    sha256 "d24628ebfaa2ee3144451260a798e7cd9545c64c2fa93896fb0cdb0a15198bf2"
    "it"
  end
  language "ja" do
    sha256 "eff8120fe0d61f16074359cd3ed073048f959778cb205b326fa8b29ef22f13cc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "86c6066b7b71a17a2a6e97a2da8ee6a3cff0a5180ffde2795ce7d032b51e1b62"
    "ko"
  end
  language "nl" do
    sha256 "303476b485d4c8824fd060bc19f80b9ad02b3c6c92f54a69448b73c05f5673f8"
    "nl"
  end
  language "pt-BR" do
    sha256 "084003d78c19c8e5319a894c255355c0b6f295a6b33a0d8d6d93de85b1197680"
    "pt-BR"
  end
  language "ru" do
    sha256 "ef7961dd0f2f1372d9c24b5398380efdaefb3bbda9482f767eb9bafe2a34f5c9"
    "ru"
  end
  language "uk" do
    sha256 "6dcfbb3b6c7dd01f9fc2200acb353c3f262c0d5f330c38183ba3171f5771eb93"
    "uk"
  end
  language "zh-TW" do
    sha256 "17f1056ef083225d19decf52a02314eadf8f40b98a3bfb8ec879af9a892397eb"
    "zh-TW"
  end
  language "zh" do
    sha256 "3e8916da4cc50512f3686ed72433d19f423a48526b979bda3d58a959cd9d07c1"
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
