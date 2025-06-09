cask "firefox@nightly" do
  version "141.0a1,2025-06-08-20-25-51"

  language "ca" do
    sha256 "6d8a6554be7bda9edddd886cac010dc51e3bb72f01395e3b29f886b0232d2487"
    "ca"
  end
  language "cs" do
    sha256 "b71a24bcd7f46ab2f157a5b7ffcede1e0247cd52f478eae64170865aba3c0a7e"
    "cs"
  end
  language "de" do
    sha256 "213e76cc7164c8b68b16cdf72d8318c92367c792aa8a78faa012b42e10efc7bb"
    "de"
  end
  language "en-CA" do
    sha256 "bb7c601045a62f62d0b30c4af822e352ce10d8947d0792f25ca5ff7dfa1634e7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1e451bcec52bb90dfb9d4bd40dc5f900a82408b884bd5e3e064a5ef9fcc3a16e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b79eaa8931ca40c77e63c9ca0012dc2e6b8c6a384eb2720a36a4c9c5e61f3f84"
    "en-US"
  end
  language "es" do
    sha256 "221c8e94a83a32f079be01194494a0b3dcfa37858c1e8dbde9ce2a1e2abbb975"
    "es-ES"
  end
  language "fr" do
    sha256 "7e2d4e2a9b652029e116ef98624f3cb02fce457d5556859e1ed75d6e25382ebf"
    "fr"
  end
  language "it" do
    sha256 "4c6bb1aec840a565d6918bd7e149c853cf212a6db018a85ca42c0c52b59b0f3f"
    "it"
  end
  language "ja" do
    sha256 "d313b98e57124f99c2e49b574345f9a1f6ddf231a0ebc4bd32c546fbabef6ac0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "41254b614363625d478421f35c41a2fc9d05c85ba6f12e2aabb22d55ab67117b"
    "ko"
  end
  language "nl" do
    sha256 "51d0fb2a09c9378c5f27d37257b98f2cb13d8da6e58a7bd864b925a82c0fb194"
    "nl"
  end
  language "pt-BR" do
    sha256 "11aa81f343ab2dbfb7e4893ff0ff00005582a1571beb047ce2f8875b68392a7c"
    "pt-BR"
  end
  language "ru" do
    sha256 "4274e44606db38980424885fa1b7493f5ac0e1f946846c8ca7ce1569a3b9ebdd"
    "ru"
  end
  language "uk" do
    sha256 "959d75db8edd18f34ae4eb20c90d4e82d5ce81fa2a3fbf519b062bce09ba07f9"
    "uk"
  end
  language "zh-TW" do
    sha256 "823d9d234a3c5dff23af138c84f638d0e1870dda1e414eeed289a078f96e4855"
    "zh-TW"
  end
  language "zh" do
    sha256 "f38262ee23bf3025b4e8b2a1cd69ef83f171578c4fd22e768ef7c38657c66082"
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
