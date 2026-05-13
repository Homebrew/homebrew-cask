cask "firefox@nightly" do
  version "152.0a1,2026-05-12-21-26-23"

  language "ca" do
    sha256 "68145b3bfaea1cfd7559637217505a91ddb2705051f7f927116f62aeed32a198"
    "ca"
  end
  language "cs" do
    sha256 "5bc55753f25d82d64dcb2d4bc6fcb294272992b094022dd3c8a376b1a3ae4324"
    "cs"
  end
  language "de" do
    sha256 "0c44afd4c2306423d01195b3ac2879a2a2a576ed8e4f359b03440f9552b09cfd"
    "de"
  end
  language "en-CA" do
    sha256 "7c411f9272b9193f501035cd1ef0b267d26b142ab485ffc8d32bd915844b8d43"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a3893c279390c50a96d90032a89fcc00a60901050bfb98a934854d280d89ed88"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e12a2d4fc5d76c9b0bbc075bf3e1b4b13d98872c1623efe26178a75d912a11f6"
    "en-US"
  end
  language "es" do
    sha256 "c5040dccd003f50bcfd5f5fe131e2d84dff7d727b64f12fc2665862ea7a34730"
    "es-ES"
  end
  language "fr" do
    sha256 "8ae16cab69edda10c4a92ab9e209dcbe4ba2803c32872b7520f2fb2fad6e8595"
    "fr"
  end
  language "it" do
    sha256 "10ef1c14f0e1bdc645bc5b4e81c72a72beba79301453d1fd4363eeb721fc6de6"
    "it"
  end
  language "ja" do
    sha256 "f88d2a30559047799d2aaef203fa1d3901b1207dc04085bb93a2ff1752307fd5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8eb76ad7c34a3dbe63d40d1c609b3e9bbe3c0311f9187f66cea626754059d104"
    "ko"
  end
  language "nl" do
    sha256 "c294dcbf4ccad8aedaf3a180716e56fb30697633e5c2b37d41c55453cce7a87f"
    "nl"
  end
  language "pt-BR" do
    sha256 "c6cddd22e6b929a5ba592c89c4414d206ed7980dde6ad9aebc341404ea7fe05b"
    "pt-BR"
  end
  language "ru" do
    sha256 "e081ecbd3bb8c21e66e5ed63b8a520c5574636c21bb4d6b34a974cc5f1e24e10"
    "ru"
  end
  language "uk" do
    sha256 "7d78619d9dbebf457a500424d70fc005674fbcde3a3c0f6454a05d17f0d7addf"
    "uk"
  end
  language "zh-TW" do
    sha256 "6a187544bf58e0c519a7757591f037d115f2e2ac6317fb52476fc1bef99e9a16"
    "zh-TW"
  end
  language "zh" do
    sha256 "09910b450a49d3ab6dc8121124e9c3b7d145a0e0e262666813f1d17552eec0fc"
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
