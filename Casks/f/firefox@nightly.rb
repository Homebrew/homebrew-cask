cask "firefox@nightly" do
  version "154.0a1,2026-07-01-19-29-17"

  language "ca" do
    sha256 "37092b6c7fff81aea56958d1e2e27aa76653cd1c0c43696f7482d61c76c0a283"
    "ca"
  end
  language "cs" do
    sha256 "2bad3f774242265ab9d52b5ffd33ccfe59e020098c5d51863c2b38fddd77f492"
    "cs"
  end
  language "de" do
    sha256 "d90e2f4d93cc61ae7ee200be16036d1af9c4ec06d428da01f59bf548bca0980e"
    "de"
  end
  language "en-CA" do
    sha256 "ffc7e98b3ba03c8b93ec5ee4f44ecaa6553e8f9275827d99883c5dc172ff9fb9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bbb84d1c110d0729d20e608f5999535ddebd5b27ac9feb956938a93d201d591a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a0fa133a31da7896c5894912ba8ba34adbd248877153c17dde14a7d5ed3a1718"
    "en-US"
  end
  language "es" do
    sha256 "0d7fa1a291226fe59a79413593c52416f33a266f532a06cb660df8e805e4363e"
    "es-ES"
  end
  language "fr" do
    sha256 "7fd7eac8ec81a1650aa67517e22c0a7c509e6b6b71fbccb488bdde070d2678eb"
    "fr"
  end
  language "it" do
    sha256 "69999cd37636f51bf79166a6de0541fa863279950c18250c96728e0d616391ed"
    "it"
  end
  language "ja" do
    sha256 "e215fb940b1f8c8841faa01833c57a613d53fb79eae58b00e0e11b775fc43790"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d791e452de93bdab5270780f68cc95d7c12c8f00719a92edd1be785d06f8d0f5"
    "ko"
  end
  language "nl" do
    sha256 "af3042f6a7820b1875065fdf442cbafc899cbdd01daaee1807fc4b4ffdacbe01"
    "nl"
  end
  language "pt-BR" do
    sha256 "b674a53189284f63bdf1dc97060b05892a7f937ae554f119bba5d037a343abfd"
    "pt-BR"
  end
  language "ru" do
    sha256 "d854ab1f054035dc7d9d676c8ef7e1f837f88cb59d463a6c5eefcc786230cc38"
    "ru"
  end
  language "uk" do
    sha256 "142613f6f723ab6361dcbc8ece54838f1da2ec6d043507c4e4f2d15d68f27708"
    "uk"
  end
  language "zh-TW" do
    sha256 "35235ba5977328d33cf43c8b67288a20ad920d9dd1c2400b44192b978572c28f"
    "zh-TW"
  end
  language "zh" do
    sha256 "1beb7b3d3d16f780fb6b5ab955e5f7135e0b04254a4747ceeb15d692a736eca0"
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
