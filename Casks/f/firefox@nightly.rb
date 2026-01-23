cask "firefox@nightly" do
  version "149.0a1,2026-01-22-23-42-03"

  language "ca" do
    sha256 "0960a532afe736b4df2ad36d8cbdc636dab211a5ba1416f21b8ff50bce17560b"
    "ca"
  end
  language "cs" do
    sha256 "ce6e280ca0c9bab629b11a64716e9890adb29d73147b5241cc577a0bf77f2742"
    "cs"
  end
  language "de" do
    sha256 "a3382204b1681e7600458c895fd12ef1746c0cf800ef3743972ad3f96cf660bf"
    "de"
  end
  language "en-CA" do
    sha256 "67f672099a74aee151a6a47ecd0d4dce616c80d302d8bff4f2c1005dc3ab23a6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "81d82bc13aa6b86adaa11d57d16fe2d71fcb5c687e811c99b8bb2cb913e3413d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b5090a43a6080d928870bca156ab89c44f1cd86fcc0f681a09186c7d60600b2d"
    "en-US"
  end
  language "es" do
    sha256 "8f0721e187069efe3b513dfea2baeed2fc9a21dd42b6e45321cbd7b8ebdafaf4"
    "es-ES"
  end
  language "fr" do
    sha256 "9715b22b4411760eb29ae9ae8e004338550b2c6941b08cd2490282330ab51482"
    "fr"
  end
  language "it" do
    sha256 "3c5f2ff8ed202ea59b435b400a112c16901f7b5e8bfb3f463ae068f885511f10"
    "it"
  end
  language "ja" do
    sha256 "316cc6e9fbcdecaafb17c7f0e4e300d7df7a79596076cc22a4a30301541ae54c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "aa11548fc72ae76bb338edb0149be43d40ace6da632102eddbd9703862677480"
    "ko"
  end
  language "nl" do
    sha256 "720d98317d7a09b34331750fba2ea6a43f9685b76dc482b3a74cd6f696bdb9d1"
    "nl"
  end
  language "pt-BR" do
    sha256 "491e54aa0e69982de3b9edc2dc48bc61e5da0af20041b40469c0363139c5aafb"
    "pt-BR"
  end
  language "ru" do
    sha256 "267e48799e5f55f4e8c005a6321d141a78400cc07d9e5a797e17ac49ef54f62f"
    "ru"
  end
  language "uk" do
    sha256 "c93fa2e1993ff44598c0baedadb63601171119005dc60bd22729562c1f068c27"
    "uk"
  end
  language "zh-TW" do
    sha256 "a9f08097f2998d7900f30bd13c8f9791abc30c8538d3c859194f2f2d13b1fb99"
    "zh-TW"
  end
  language "zh" do
    sha256 "0eca826738c7ae129c4f3b2dec4116556765909d694b1ea34013a9cfb5100ead"
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
