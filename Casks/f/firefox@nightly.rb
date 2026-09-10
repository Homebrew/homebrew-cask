cask "firefox@nightly" do
  version "158.0a1,2026-09-10-14-32-52"

  language "ca" do
    sha256 "ae5bf8ee5448ab5247a75b257874d1a35796578850ed1dea46c9a45cf9432eb0"
    "ca"
  end
  language "cs" do
    sha256 "3a96e9e4df7741d133871e7a320e45cc1c4f871d7f9d18d685be0db57de86b01"
    "cs"
  end
  language "de" do
    sha256 "b8caa4e887a0b1f10d3c4bf484e38202da8a614d555e89c3c289f076450b4b91"
    "de"
  end
  language "en-CA" do
    sha256 "8a763a9bb7186e5d69f71e9e01b6266ecc69cd016bdb465490f666efa1eb578a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e0bca6fda5dd2ec6f3c752a6275e189210d5ad00045846e41bfa03a7ec93d876"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1dc8c2b46d8ad3d9776f7df40e5b82e510f4151520aea3be5f9cd7501be2aaa1"
    "en-US"
  end
  language "es" do
    sha256 "3e1206e1d04c4fbc8783b1fde9cb13bb9c47af85e835e3d9a8851f7f39e9dcea"
    "es-ES"
  end
  language "fr" do
    sha256 "cffd0304665c14fb75d8aa3edff069ce7b4fe4e739412ba92b849889a7293fe0"
    "fr"
  end
  language "it" do
    sha256 "e98b62ceca781e1120f8d5a3141439dcc0fcd67e33bb4b1f9eaa5e8f32d2a081"
    "it"
  end
  language "ja" do
    sha256 "1c542c3f9eb8e8cfb054fdbca4555c1e83d9b3d5ae1df38406aa6019b9d3f692"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7873f5f6d9d6e00f4c8dad07987760b7c71284b826c7edcec163fb98a4508bce"
    "ko"
  end
  language "nl" do
    sha256 "e2bf16456fb5f94cfc9c0de8997b0637b00bc21e7245aa8025f6db47a4932842"
    "nl"
  end
  language "pt-BR" do
    sha256 "752d470976e9e2b61e84b7d4b33276e1f7976320cd1ceeec99e3b8c59fed4d18"
    "pt-BR"
  end
  language "ru" do
    sha256 "7370dc4dfb8e0fe549d2b20f2a0006bb0a80a5c09021ce54a9811167cde920ba"
    "ru"
  end
  language "uk" do
    sha256 "3e29832b113239dcba99453264ff9247146ada021ec88ef761a0f8e1cfc6310d"
    "uk"
  end
  language "zh-TW" do
    sha256 "52fa7b9ac0e8d9d574e5800f6a27b9d3731a23ee096cd66097cd1022d6dd613b"
    "zh-TW"
  end
  language "zh" do
    sha256 "7813be01ef50a921603254d78db5dba05e5e60ac1ab2b48ba85b2a98c785b338"
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
