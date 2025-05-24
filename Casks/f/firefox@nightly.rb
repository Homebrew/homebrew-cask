cask "firefox@nightly" do
  version "140.0a1,2025-05-23-21-09-18"

  language "ca" do
    sha256 "b17ca5ef27c85ad0cf8c2dcd29dc348d691828aba702829cc0b664a34385e435"
    "ca"
  end
  language "cs" do
    sha256 "006df51e10417d5ce320ca176549806176d6af0c6e4a3ed4f629539b19bb68de"
    "cs"
  end
  language "de" do
    sha256 "a9ba3186c0f66f3fc1e0115d6adf94a1afabaa2e8e5b511b484cd92e158bbb7c"
    "de"
  end
  language "en-CA" do
    sha256 "6e41e63b8d3a55c1b0f530dadf4f9598eb2a2fb83c5cfa3a2ac0e467b37e7279"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ab53b1b2d6549d801f8a8cb7a7113c925886e7fbfbd609764baee00c229d49cf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6f91aa8e07b1a6beff8abe885c1de8c1647a70975af3e7bf94308c88148ef94d"
    "en-US"
  end
  language "es" do
    sha256 "f95d395ca2e7f589fa5f057cf6afa23b329366b0b5bbe081aede0a68328f113f"
    "es-ES"
  end
  language "fr" do
    sha256 "0274b8761f3a10dd1834336336c04c190d1c5fc7dbad24e44b51d1de78691a32"
    "fr"
  end
  language "it" do
    sha256 "d94e8120e89888bab42e3b462f90cb64d1f0153bc88d373385be8e2a908a073c"
    "it"
  end
  language "ja" do
    sha256 "d3b8a5b1f72e2387eede41f2d4f9658a615240ee45eb79238b8612f23da43f94"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6db53e017f71c689ae8e51f368f338a25e8fd4fc0302d135afc7658f49161872"
    "ko"
  end
  language "nl" do
    sha256 "5a4e1749329d038fe2fbc0d9510a79b350a7c95643462cbc7744e83dadb9a9cd"
    "nl"
  end
  language "pt-BR" do
    sha256 "c662a0ac6b10956eebabd5a7203c9068efff1888e8ebd7d494490ee686b3c629"
    "pt-BR"
  end
  language "ru" do
    sha256 "23897bef740646cdd5650cab75797c2a8223bf46f2c62a42432817c07e7fbadd"
    "ru"
  end
  language "uk" do
    sha256 "aa3637321293f489a7a94814aadf720d10262466824499c4ffab09a168d6317c"
    "uk"
  end
  language "zh-TW" do
    sha256 "48d9ed84c3ca0542279b0d43b42d909445c635ca76581411d29dec20f3574fcc"
    "zh-TW"
  end
  language "zh" do
    sha256 "a3f322ce8f471b41b6b9551e3cb127a80b4b96704a755676e4d0699745d04493"
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
