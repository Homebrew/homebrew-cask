cask "firefox@nightly" do
  version "141.0a1,2025-06-10-09-07-53"

  language "ca" do
    sha256 "818c79f00b41514572caeb3ba4c6f44ec66bbd4c5adcdb698e29b498bccb479f"
    "ca"
  end
  language "cs" do
    sha256 "e72b752050245996063304c97f80575c38163535cd0f93f291aa568fa376df2a"
    "cs"
  end
  language "de" do
    sha256 "4a400d470cb22e2c286adacbecb4a3d55e16b1b9b4edc043702d1c9982a7474e"
    "de"
  end
  language "en-CA" do
    sha256 "800d7dff51c623633a2135733163eba0daebf3d85f6cb65c963269614b09f89a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0cce96dfa40218915462aa38a081d08ef6f52164987b13599b402a334621288d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d89663632bbe30d5d7c5d7ec5209142f732e30b9e2a25ad18ba4a4719e80b51b"
    "en-US"
  end
  language "es" do
    sha256 "875c5d720bea97273c9d46a2837f297a13b38a57a1313a71405bbe9872d76393"
    "es-ES"
  end
  language "fr" do
    sha256 "f8f771007ae855b45ae2cd8cfcd1dd08727b75e59e511ec2da63874845ffe65e"
    "fr"
  end
  language "it" do
    sha256 "81bceb042636cd59508db2eb188a3403c3b9b8680d9f70902018e10de3db5d93"
    "it"
  end
  language "ja" do
    sha256 "7eaf57a82c04ff28fbabccb902c913f10a3e1ed2d15c43ab21c1e0610d53bf6f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0b5275e72d73b854b758b635f546417fa22aa22cf50d7557578d93277e53e554"
    "ko"
  end
  language "nl" do
    sha256 "c1250c29f9c04134830a9cbe97c9d9fd934459b544df0c166c8007aca3ed272c"
    "nl"
  end
  language "pt-BR" do
    sha256 "0d8a26520ece830906a56cafccd7e2d7a16de2d2fd2023f290a32b33f0b584c2"
    "pt-BR"
  end
  language "ru" do
    sha256 "e742fef20f85cda52d3c8346137f68e7bf76163d2ee0516dce8cf4b2fe50ec62"
    "ru"
  end
  language "uk" do
    sha256 "db419308870e124dcd50fe7f10fbeeca10539cd255bce8a1678435766b946a7a"
    "uk"
  end
  language "zh-TW" do
    sha256 "536ac5eb6f8dd30fa35ab919f5b8f1fc3d25ee2c837773fcc38dca994f5e4407"
    "zh-TW"
  end
  language "zh" do
    sha256 "41790b85970ab70c9d9ce066235b1d6f8d3e6ffde0e6e3b77fb473b75afffe97"
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
  depends_on macos: ">= :catalina"

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
