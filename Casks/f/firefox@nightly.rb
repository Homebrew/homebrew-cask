cask "firefox@nightly" do
  version "146.0a1,2025-11-04-21-42-30"

  language "ca" do
    sha256 "2470035194117b9e124e4729309ee46a15c439a61290364e08b0a9c5e574c182"
    "ca"
  end
  language "cs" do
    sha256 "284ddb110e721e8cc7dd02be67bdc7c4162dbff57ea41496d58bbc2c96150dec"
    "cs"
  end
  language "de" do
    sha256 "75a473bcb096becb603de641d297ae6cf31e4132937c3ebefd90c9bb7d5f6809"
    "de"
  end
  language "en-CA" do
    sha256 "48d70d1bce8b73a51006176c8a3f3845ebc6e83d15785c0e4d39bdc3b7a6e2ae"
    "en-CA"
  end
  language "en-GB" do
    sha256 "81dd1b44e49dfee56eee1f223623f96850d78ce270a945d105b45d77de1a360b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c785f27d9e57b1927ceeb7d9834cb65a48f6a250942ede66a8822e5c73899763"
    "en-US"
  end
  language "es" do
    sha256 "06bd7eebada4f9343ee7183d526f3993d4e879df7fb75edb0fdaf03aa71d404d"
    "es-ES"
  end
  language "fr" do
    sha256 "f1d81111b1c8ae2e9bf6bcbf837e7faa5297910ad31ef7e4b3d45e7ce69222e1"
    "fr"
  end
  language "it" do
    sha256 "3c5557cdc2ef2610a73f74cbeeb32291710e065227f2406406784a068d71d04f"
    "it"
  end
  language "ja" do
    sha256 "1e4c9111f4d6caef0d3d3c3d7ef0f3dd7e9156fe2d470855d3d6906e51720244"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "853f240abc6eda7b76cee3fda22f56fc50099914db4cd1e42353272baecc1c50"
    "ko"
  end
  language "nl" do
    sha256 "71684d55004a7c11a14c252d61720f97db9fbaa6f705646babc3389cb854f6fb"
    "nl"
  end
  language "pt-BR" do
    sha256 "710d0fe22488df066f9691231e3d9cbe1411439ee5af1b76640ac09d3b73233c"
    "pt-BR"
  end
  language "ru" do
    sha256 "fcf293cbd7cf58ea3e3c8405b5803fdfe32a046f33e50dc6ef746e2c59d3d10d"
    "ru"
  end
  language "uk" do
    sha256 "bf90801feb78aed247316c41370711b2ce2c4bef3bf3abfbbf155523da745c78"
    "uk"
  end
  language "zh-TW" do
    sha256 "03b71339020335dbf50cd2c6108823cf0ee13b61fe4ed52dc49191701af178d1"
    "zh-TW"
  end
  language "zh" do
    sha256 "2e9df2d7b1c439df7ac9faece62e2cfd4b6a549b0a941d9879608fbb1ca4f853"
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
