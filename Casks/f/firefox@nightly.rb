cask "firefox@nightly" do
  version "159.0a1,2026-10-05-21-22-56"

  language "ca" do
    sha256 "c2a0abd209a13a643ec6daf45b868232bf9caf6c1de8b36d01c661c4953e99da"
    "ca"
  end
  language "cs" do
    sha256 "cd61b90725a424fe68d85b60f505f031b8b48387beab960ec4015c6dbaf22691"
    "cs"
  end
  language "de" do
    sha256 "78c94c473dc9403d9e79277fc3de570888d9cd402d2fe47e745cefc4f0e6c2f6"
    "de"
  end
  language "en-CA" do
    sha256 "60dcaa253bb1dd46c0a62e19ed5c229e9e5b8c59cc566202041e9ac07b2cfe87"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c8e70fb117067c94e801199ceeae95e41fc96810141c6f0cb2eb50c4a78bbbfa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "20511b802095a3a06bf1921bb8ec6367c2dad5732e2e5b837286fb881f04e0c1"
    "en-US"
  end
  language "es" do
    sha256 "cd8c3c41bff489fe532d2a6655d592b878a01c6c4ea76e5f3329f9437a554089"
    "es-ES"
  end
  language "fr" do
    sha256 "cddaee50dc5359ebaad821b3be00a2160362a5e27a12c04d9c5764f6190e7a49"
    "fr"
  end
  language "it" do
    sha256 "91154f9bb4833b5a2ada60952d2a552cd173cc1fe2228c93cb7d4ad76880aaa6"
    "it"
  end
  language "ja" do
    sha256 "56e14ba262bf98f8db1fc17da4b26d7292208ac849a0674b7dcf6d858272a964"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5c373e1685407f92d1a5d2d8ff29313e1f1cb17e832fefac8d669ce0f741c233"
    "ko"
  end
  language "nl" do
    sha256 "383ecac723dfd1e41946eb25c46524fbc8e2a87e03da7c08b002fdf1f3034b89"
    "nl"
  end
  language "pt-BR" do
    sha256 "f7e1aed334a5e30436f6b78e20439a467b777c35db55c1b775f246e01377ffd4"
    "pt-BR"
  end
  language "ru" do
    sha256 "bafa9acf6ba6083ed0f5c4140fde7da837122a6329d9e649e99e852d2ce4169c"
    "ru"
  end
  language "uk" do
    sha256 "d07b82a4c3362454a9307adb30067e75883d9d0fc940678ff553d2c1e6560113"
    "uk"
  end
  language "zh-TW" do
    sha256 "e7cf532f9859b0435afac608c554600d0d2de1c84e9c37971c763a03793825b1"
    "zh-TW"
  end
  language "zh" do
    sha256 "5c3099b0acfb84a297e49b8c3939c46b9a0158840caedd70a57355faa027e0c3"
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
