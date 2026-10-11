cask "firefox@nightly" do
  version "160.0a1,2026-10-11-08-14-12"

  language "ca" do
    sha256 "2dd781a61cf86f331f98e4116bf0b919cccc08b477057942fbf135130dd8abc0"
    "ca"
  end
  language "cs" do
    sha256 "7914da986e6f156f3167e0a8ff78414e4ee2383962e2605734c1027d3fc1d9eb"
    "cs"
  end
  language "de" do
    sha256 "9fb4e132054c4394a4c62ce7d6005d8f1b21d0b8fcf94058da32a23a5711b18b"
    "de"
  end
  language "en-CA" do
    sha256 "9f0b4091cce9096b61cbe8eae36aef3707964a6a96b66a5ad393fe05d23f4fc3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "43da6978073acf147ca846f7fc71fef1f47e26bb233277bf0eec39d6c56bd97c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e3f7d5b294a0bf19b07593c1d47585529c89fa0694a34f08a4d5f690d6089c0c"
    "en-US"
  end
  language "es" do
    sha256 "d5f93f57322aa1ea65a3ef037082f732036c4f8f99023fc612905d82ea3b3628"
    "es-ES"
  end
  language "fr" do
    sha256 "f4415c574bdc04a2f6993f6d7950055f26d7c71fef830b801fcbff1892c91b60"
    "fr"
  end
  language "it" do
    sha256 "bb8b459b9ddeae2f5f7163dd6711b8d235c3ce8137484de9a3d6eab84d0c26b0"
    "it"
  end
  language "ja" do
    sha256 "356885ebbc0ad07b07464be8cfffbe494875faa437b0f6f939e05e2f896f4c62"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0c5711e68c25e0e57359375200e1c03fd4a54134deb63c96d4b7763e3d3691e6"
    "ko"
  end
  language "nl" do
    sha256 "7e12c650887f7b0570fedf6b6bff046177dce7efb436b420311378a2c4b319fa"
    "nl"
  end
  language "pt-BR" do
    sha256 "09c4ea7fb36031d298869d28ff1954f3ee51362531bffec41fb17af3516effa3"
    "pt-BR"
  end
  language "ru" do
    sha256 "a4271a0a132a8ab194a8d5a211c71446c6df67c732542e8eb251443b3b3f5400"
    "ru"
  end
  language "uk" do
    sha256 "cf91fc9eb8a1df8fd949fc0744da1b9db4c06056a8987f5b5f1d9f4a90994474"
    "uk"
  end
  language "zh-TW" do
    sha256 "839107060ad455dcc6d1802b8af0d138a20a14dc325d7f02c181d915e869e3c3"
    "zh-TW"
  end
  language "zh" do
    sha256 "8a322b6ac5e28f73ced170d37ab6510436675ae6c9651d93dc65ca7e107dc42c"
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
