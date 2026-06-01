cask "firefox@nightly" do
  version "153.0a1,2026-05-31-21-20-07"

  language "ca" do
    sha256 "65eb22537641e3463ae47b43eaf15328e7297c175ae01dc01d3e9d04e2b545dc"
    "ca"
  end
  language "cs" do
    sha256 "e6eb8e583ed8adfafddd01e3ce3b3594cc1dc037c93384301eda46abb047e917"
    "cs"
  end
  language "de" do
    sha256 "6fe3a66481ed7a8c155d99a7ee9cfbee6fac9bee6e623e0e9e0ab968db1e5ffb"
    "de"
  end
  language "en-CA" do
    sha256 "2bc50a0fb443fea6d21ec96d2216b6d35c35e11fc21124ba5144247a318b09df"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cef69c62d6e9dda5d7b673c85a79c9256f1a2dee06d099a682daa3aa7bad590f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "183d10e8ee85d357b27880ae29b428f118b52e3bc196d1cd6d1e63354e1cadf3"
    "en-US"
  end
  language "es" do
    sha256 "b8acd949deeebc275434d527e2d48a2a4e16749384f4c86f86e66fe5833bd1a1"
    "es-ES"
  end
  language "fr" do
    sha256 "fd597bc2fb7cba842d2157937b2d409c8e625893bbb3cad21340ea0b5daeec0a"
    "fr"
  end
  language "it" do
    sha256 "bd23dd8d0de6091b450c7afd80ca4f18ad4a90022ab377da2587e0ef78e17c37"
    "it"
  end
  language "ja" do
    sha256 "bfa17b54a65c7da4bf0116d04c0070f7f4322dbd31e32bdf0f10472df6105e2c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "43f755dfa56769649d781ac0b2c433802c604966b1f50b82f861ff7cbe072a32"
    "ko"
  end
  language "nl" do
    sha256 "9ba6b912b7bf157e22dcf0b9663b0ac02b7de9cdd3720ea281829512b8d35a4d"
    "nl"
  end
  language "pt-BR" do
    sha256 "af305cfcb8be02516a2310163789bd2cef159f79a24449f10550387165b33a3a"
    "pt-BR"
  end
  language "ru" do
    sha256 "0fb01d99912bc256554d80a8400b37e79be1c334b21a3504c83d68a3a47b7697"
    "ru"
  end
  language "uk" do
    sha256 "49d5ac54e756202d2b649ef67a9ae036f745b4c3bacf6c2e09477c61d803e5e2"
    "uk"
  end
  language "zh-TW" do
    sha256 "61c4ca3d6f364a54a0f114d639446f48a4c493554e04a611749d6b0893fd1a52"
    "zh-TW"
  end
  language "zh" do
    sha256 "878a809cd27e50d872265ea00cb7a48aa14c7056211667d4e13dac4d34a2482f"
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
