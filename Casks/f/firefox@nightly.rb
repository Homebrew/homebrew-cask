cask "firefox@nightly" do
  version "162.0a1,2026-11-17-09-38-42"

  language "ca" do
    sha256 "eb2ba5e0dbcf65babad48aa11f4d8957ce34c7896c6abda22e409c1304b30c9c"
    "ca"
  end
  language "cs" do
    sha256 "93f31662707af32d3818d1a2b7f2059ff8bb79f890811ca725ac0684b5c9f80c"
    "cs"
  end
  language "de" do
    sha256 "792090d99c417f223391823f263f228c7ea1737612b1527488086899160e8ce3"
    "de"
  end
  language "en-CA" do
    sha256 "edcb2fe1318443802f07b6250a91a70162340b96ca35478c89e758879fa4eb0c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fdd5705747271c0946dd20959c9987a331df0d4ee6954f34816a6632d610ded5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ca487908b3645619d6a739012584cfd647690d9a452ca3707bf4d003bfe89778"
    "en-US"
  end
  language "es" do
    sha256 "5b16f658c3d5db007033b7d1e24b4c1d5bb16f3aadef299bde79a05793295433"
    "es-ES"
  end
  language "fr" do
    sha256 "a1d39713d79b1255effc9a5918509058e2e18802e69bcb8284a7f07c55d23ba7"
    "fr"
  end
  language "it" do
    sha256 "10d3b59a56f682462798b7a12f0f1b1f531a2cad4d1e9379840a4af1bbc53d58"
    "it"
  end
  language "ja" do
    sha256 "b3d063c1bc90ac5ebd13e6d131efe3ce7b50ba9ad55a6167c9db5aa1318678c0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a20d87915adf9bfe90fa76cd44b2b5dd3021d4578caf48a15a914224ef5c7bd1"
    "ko"
  end
  language "nl" do
    sha256 "c57f88c99782cb5e0beca571e2d431de597d9226eca225847ce2b8a7cd8318d0"
    "nl"
  end
  language "pt-BR" do
    sha256 "33b344d5f7c8ccb6401fa5dd714f1be51a8033de85d8494e4e2d93a40d03c9dc"
    "pt-BR"
  end
  language "ru" do
    sha256 "d2d4bae5b4e862afd3a22832229c2e7934e69a8a4755fb4d34430e0b5d042373"
    "ru"
  end
  language "uk" do
    sha256 "435304aafbed833d5d79e5e26f8ddcc87f52dcd1015be820dad9a15561ae1e6f"
    "uk"
  end
  language "zh-TW" do
    sha256 "98f4e8bba6a4a5630fa4ddf3aafc96dca69e74d61683155c38a23946e93ca87d"
    "zh-TW"
  end
  language "zh" do
    sha256 "9f900b4f4dc2fc3b987a7dc094865c4af7bd17ce4480f76613b362b73624db89"
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
