cask "firefox@nightly" do
  version "148.0a1,2025-12-11-21-02-36"

  language "ca" do
    sha256 "e489ec8c08de104badde1730fd6f96e1cc237607a314ccbdcf985a8b20658dcb"
    "ca"
  end
  language "cs" do
    sha256 "aa84e1d3e03de00f3fbd7f1c7b00da4e9408d77ec53fe54499b81742eaa10fb6"
    "cs"
  end
  language "de" do
    sha256 "6b6960a07ece3d75cb3941d1fea50793ceee89c536243e4bf855e825f37ed494"
    "de"
  end
  language "en-CA" do
    sha256 "655fea13e5b0de6c7561281cfcc5a2b49eb6f23839d72efd01d2dec1af5f6d3a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4b3095f35c746858778be58a50c4142c4ca60cf20009257dca973ecd7ea25c75"
    "en-GB"
  end
  language "en", default: true do
    sha256 "98db701ddd446afe6eee6fc4fb82f9aa7bdd58abbf2526d01717e92d86b038e9"
    "en-US"
  end
  language "es" do
    sha256 "b3ea3bd71a2ab3f2c9849b500322e5731192ca796db705fa91710136e93effbe"
    "es-ES"
  end
  language "fr" do
    sha256 "9e7636ced5a33dff24d30cf1aca0a6752f56462f91444055c8f5cc6fc4256aa5"
    "fr"
  end
  language "it" do
    sha256 "77550fcb5339a73294db1cce702b021583fa25047d06a0f56bbea397677355aa"
    "it"
  end
  language "ja" do
    sha256 "2e60aef13335a4ef467050f904ce3a00d73329229e80a9a4132c0676a2531172"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f6924c1c3c0662081e47e780cdbe192fa47a8f693902b1be244b4be3bf650b28"
    "ko"
  end
  language "nl" do
    sha256 "c273d59d5eb3303f5db1ba93a37c50dc69c78a39846122e003eeb3e8ecdda513"
    "nl"
  end
  language "pt-BR" do
    sha256 "cf74c1b6ef24a62e83148c9a0932ea10c28ce67f821d9ecdd51c6a38e0324589"
    "pt-BR"
  end
  language "ru" do
    sha256 "e525f851a0fdef66162a8c3f920537f4f1d2bbd8c6ee0c734aa4d6cc79edf303"
    "ru"
  end
  language "uk" do
    sha256 "69d257a0eb57502251bfa9b57052f3869d3350941e971c222bc5c1f7f375dca1"
    "uk"
  end
  language "zh-TW" do
    sha256 "14f77c50794a75d54e141b251cd0d96265dce29d6f6490e74d3c2c8306346984"
    "zh-TW"
  end
  language "zh" do
    sha256 "9cbcc0b67988ca5bada2a6ef6e424fa26d9e1e620e8a06163e83aab30cc770fd"
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
