cask "firefox@nightly" do
  version "147.0a1,2025-11-19-09-57-27"

  language "ca" do
    sha256 "a492c123cf0018c89eca5307afefc329d35db72595714c865f3f984f7736e331"
    "ca"
  end
  language "cs" do
    sha256 "2e7b0aa7441b273986e4f93d8a6a9a6353fe4fcb8555f3e67f4cf5f77ce74a1b"
    "cs"
  end
  language "de" do
    sha256 "8518f510478f720c3f512691e06dec4dfe1d4197daa26cc5c72db077bf727db0"
    "de"
  end
  language "en-CA" do
    sha256 "746be3086043ace295b2b8421f63d2103d4587852b9dad8f1138e537a420737c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b1b44d380ee73217dd877ee7ea2848b7138d540f9495152e8de6ee07105094d4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c8d2e9f7762fdbda036e139c1b7789b1bef07447dc1f60aa5ad969d83aefe140"
    "en-US"
  end
  language "es" do
    sha256 "26d4c7a1e76f9aac0cba8adb30e20a50677dc1113ffed6f6c49b2fe0b71a4763"
    "es-ES"
  end
  language "fr" do
    sha256 "f0a2873a1befd7597066e496ac4cf0f7e773ecfddc9d4fe383370575d39d0005"
    "fr"
  end
  language "it" do
    sha256 "a813a2064450e1b92d9ff52e9209714ec25187acc54e1c2c358b06d9bbba570d"
    "it"
  end
  language "ja" do
    sha256 "8ab879e9fc550bb76b3b5f353eabf78ff045a40f8446f2392842dce250b6db4a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "12a4ee5a63504275c98c90cbe3d483facc095613c90df653bb7a73bf0eef4a77"
    "ko"
  end
  language "nl" do
    sha256 "f173bd95ac16b07a395bea146e622d415cf64ae3dd0cf996cbbf6f87e4507f11"
    "nl"
  end
  language "pt-BR" do
    sha256 "bdf06e341033823b58ef77be3395799f440b98a3594162969d7daa3a4b745240"
    "pt-BR"
  end
  language "ru" do
    sha256 "55d853c3c22b2333f0aed653fb4e9c288764fc7429cc1b224e89a6c780176a28"
    "ru"
  end
  language "uk" do
    sha256 "d8db19f60b3e39857de6547958855ee6fc1daf849a370ae9279767d4391dbb14"
    "uk"
  end
  language "zh-TW" do
    sha256 "2d5cb43523e50eb30fa77a5887e8d1173ff1e97e7ef1769caacf9c1d8715b4a7"
    "zh-TW"
  end
  language "zh" do
    sha256 "d0e284509fff5a6979505eb117dbc1282b042379117905bd5c665d51744b3f2e"
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
