cask "firefox@nightly" do
  version "153.0a1,2026-06-10-00-05-02"

  language "ca" do
    sha256 "2186e2e45541c93b88706b2bef2d5d1bd32741cb12bc4902eb1cf2ea68ba2dc5"
    "ca"
  end
  language "cs" do
    sha256 "144447a1263190efe3f9676257da6439d2f7789435d2f8fde21d0cd6c687fcb9"
    "cs"
  end
  language "de" do
    sha256 "d1c4b24fb89311776dbeda3e822ceb96de565d19a844103b9e1707e37e0b8619"
    "de"
  end
  language "en-CA" do
    sha256 "2b01bef15170ac08ec9a49db52b6918f1708180ad789724f4c1286a7554869c0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4fb850f642a16f032b3827f33d4819e73093214a4924dfea50502b2a6571a62c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e747c144b98b131340bc5909163f183bd17b2a12cb723f79c3746b3f3815499c"
    "en-US"
  end
  language "es" do
    sha256 "24463f497c0624a3f6e0dbbd0e2d47c447ba438d30fd509c3b03ab274858de16"
    "es-ES"
  end
  language "fr" do
    sha256 "f5df705bd4b71e5f77c0c7a07fe9e317ec4a66b9914ba00a180820184dd82f7a"
    "fr"
  end
  language "it" do
    sha256 "57635b4acf911250d98b673920364d98907749ec58929c113b586efc40be9953"
    "it"
  end
  language "ja" do
    sha256 "f6a7ecc36cff7b8703d54fc3bef65a7969f3e8e200d3b1acf1778258f0412a4a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f8050341f32f0a4883f92f40ba995635d844cd0d378ca621512edd45e3c94e74"
    "ko"
  end
  language "nl" do
    sha256 "b0aadb9f9aee798b0f2ba029b58b7ec8e73a87bbb9a2a5d8a14d8d55b08bc621"
    "nl"
  end
  language "pt-BR" do
    sha256 "5581d96ed8ced1096446dbb2d7d449e6196c6f155b8e328903e04e8c00043b54"
    "pt-BR"
  end
  language "ru" do
    sha256 "5d4a89a558c0bd9105b9241e61f869b67e0ea4d6908e839d5519ad42ed7e2adc"
    "ru"
  end
  language "uk" do
    sha256 "eb8cee5b16969eb7c8713d6362ec18d7dd73b1774f0a314ad366d15c2fa6f198"
    "uk"
  end
  language "zh-TW" do
    sha256 "f4687d219b0e4abac6f2a0c164d36df3ccefe266c8379bea75b77d7863f373d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "c8c33d5060506afd00892fa92aa6de6089db500e3b38f3c8451d030c280781cb"
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
