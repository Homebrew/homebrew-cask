cask "firefox@nightly" do
  version "158.0a1,2026-09-21-19-57-07"

  language "ca" do
    sha256 "c20384b6fa2a349da6604ea49e478c1b08b6b382b2214037dc377fa63e8c65cb"
    "ca"
  end
  language "cs" do
    sha256 "ba8c1dd7bd011ed6947c4ea1b1ecbac6077c36054c99d9799175dda0644d5ef3"
    "cs"
  end
  language "de" do
    sha256 "badff6c2efddc712a741c556b9cde62813748623b241f61e4cac8ef1b034537a"
    "de"
  end
  language "en-CA" do
    sha256 "9f4fe408635e6486f0e3c5119bae3c120acdff710f5ce75829822456e56fadf6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0d2f75324d92f72f9dbeead4bb2cb161858055c35619d733f61f524b5f9d898e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "60a0866144d160852312d995e1984fa29de84608471464908451237e0b791e87"
    "en-US"
  end
  language "es" do
    sha256 "dff72ba40cdaae5e5e2affae41b8bc5eeb9f8a554ff432b4d53882d63727fd4f"
    "es-ES"
  end
  language "fr" do
    sha256 "fb1e9384b7c8d7d14fc1b859dac7b711107b5bf803acb45e7e4cf81479fe7c72"
    "fr"
  end
  language "it" do
    sha256 "1e455bbda1e7f1292dd3f2b2b0e48dcecc8ed6cd50376cc67a89c62e54343f72"
    "it"
  end
  language "ja" do
    sha256 "6f547b7ca46f382ea3d1c0cd3e77fca7cceba4524513a0f1cb88f6b98a9cf1c9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "430f248d11aced69f5e277c431dc001cd16425558817c3949b2746a6ea3cd2be"
    "ko"
  end
  language "nl" do
    sha256 "710f36a05af6ce95d1eaed5b060e99a6d52f73c50f295ab6c76f55ffd76879a6"
    "nl"
  end
  language "pt-BR" do
    sha256 "734b4b9e1e92c2b6248635c24c76bb5c6609f83d3053bf0ebf797c691b215aa8"
    "pt-BR"
  end
  language "ru" do
    sha256 "ea3dc282d7c3e45f88b80d10e1f543f2b696c4280b60eb4b2290f637ca5801f6"
    "ru"
  end
  language "uk" do
    sha256 "f6d1c25a2dcf67f61fb6da275c9d13343d9a25bc86dc114078ec31657f8cac7a"
    "uk"
  end
  language "zh-TW" do
    sha256 "c2d6a746b91ea1bec3057ba9675bc55e95a098b4b0496e885ac7a65a3caec3e4"
    "zh-TW"
  end
  language "zh" do
    sha256 "b091c0f4835f40efbe487c567060c862101396f80926dc5e1955f70562b7f306"
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
