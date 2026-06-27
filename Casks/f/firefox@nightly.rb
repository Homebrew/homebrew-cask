cask "firefox@nightly" do
  version "154.0a1,2026-06-27-08-36-03"

  language "ca" do
    sha256 "8499c8c49f357c5cdfee7b105a5ac2f7e8fd64a95847206d98dc765c8763715b"
    "ca"
  end
  language "cs" do
    sha256 "1e728764ab856d8e79a0c2b4edb2e0ab49c4317a5ba6ca6039fa92af9bb05313"
    "cs"
  end
  language "de" do
    sha256 "830c878dcc82a28211039284f332f527645635b80011f536eaaf3b3cece4be19"
    "de"
  end
  language "en-CA" do
    sha256 "0db0d5614938abfe6da57659ef913cf508f1cdc80f037e7da1fd663be1869203"
    "en-CA"
  end
  language "en-GB" do
    sha256 "42015ac0960e4a952f4c40b8155304678dfa6d2eb751a0030513ba0960b75f84"
    "en-GB"
  end
  language "en", default: true do
    sha256 "60f7e280f04dbb5b780313f819bc759d2b20a28cae15f2c960fc70641660c322"
    "en-US"
  end
  language "es" do
    sha256 "9302a782fa670871b542408b36da0b50e0a91c4ac7139535cac02b99ed017769"
    "es-ES"
  end
  language "fr" do
    sha256 "23a839f5b2c53a2b5ca2bcc8cf364c053a86267019ff5aab546751541bc7e864"
    "fr"
  end
  language "it" do
    sha256 "3bb3f1157f2c723e6b8c5e32cfbe2aa19c4bf4ba1ef55c8b86db221c3a59f821"
    "it"
  end
  language "ja" do
    sha256 "6ffc605d82945df8d6b87af5296806e86bb6018ad30e504eee98f7e6796eaf7f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4241d4aef6f6d0092974b75418d4e17666fa1ccf86d653463095a616f8ab0cff"
    "ko"
  end
  language "nl" do
    sha256 "8fb34dec79239935bc47e60c9a8e68534d2fc4ed07a8b3c8f23e047921d28300"
    "nl"
  end
  language "pt-BR" do
    sha256 "9e4972879a9fc1ffd1c8265487affef130e6bcdba71e23287e14db4b978e7213"
    "pt-BR"
  end
  language "ru" do
    sha256 "2e4a5ac9b3eec3fd9f5c8675bd61aaa0636d2965fbd755f5be610383673aefda"
    "ru"
  end
  language "uk" do
    sha256 "3e59626a08f9b5c18cc72976d2ae441f0bfaacb4ed0e06fd2d61361357020085"
    "uk"
  end
  language "zh-TW" do
    sha256 "91dd745638630caca5b8c8e93a76a103f472093319ed81d46dfc116873be7801"
    "zh-TW"
  end
  language "zh" do
    sha256 "5ac5baf824adb0491bdc0859ccad50687f4e5c52a20453a4bb10d94b16caa37f"
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
