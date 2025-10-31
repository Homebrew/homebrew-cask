cask "firefox@nightly" do
  version "146.0a1,2025-10-30-21-43-18"

  language "ca" do
    sha256 "38b07b7efbd85ec0a10ec76a44871e3875e4083063e78c7e13cc737b9e5238a3"
    "ca"
  end
  language "cs" do
    sha256 "9a6aec9b03ecfadb06314deda51433a17042203701f4a887b36956905998394d"
    "cs"
  end
  language "de" do
    sha256 "efa9152b6b289b1feeb0f379c3e8b90e1c8a05bac853513b5f0f4a5c8ddd81c5"
    "de"
  end
  language "en-CA" do
    sha256 "53ce3440ab8f0d8a28627c0278c7a22f6fb0608ea0cf10044c6ab75b5b21e0c5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c32545420cd7b82b450ec50869eae479c49c56f4f6acba4e681d4ede38874656"
    "en-GB"
  end
  language "en", default: true do
    sha256 "98dab2543599ea1a15bbb393fa716e92b8b1f231e0d1d5c30415b65146c57acb"
    "en-US"
  end
  language "es" do
    sha256 "b3e3822e31e7f7491f058215cee6ccf4feeae2dcddaf92fc4288163d580658a4"
    "es-ES"
  end
  language "fr" do
    sha256 "67a8981444984728c5b2e39e7aab12a3e6f18f88dbf677ea5d284fe4496ff2fa"
    "fr"
  end
  language "it" do
    sha256 "fa43680f6a1493598cd055860688aaca5ba34879e443504b49019397bd93d8d5"
    "it"
  end
  language "ja" do
    sha256 "97186ea109124e8d858472e151cb1c98c0427eba3c4bdc3e5e3749fb362874ca"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a82df1c56f338f5fd8f347e67fc3af86ac2a0840018302b9cb9ca199027b0a8d"
    "ko"
  end
  language "nl" do
    sha256 "48e55b6195a0b4486f47cae41426042dbb37fadacccc136651d67fe3f5d28e11"
    "nl"
  end
  language "pt-BR" do
    sha256 "df458cc1b762c55ba77cfe70b9fee92fdc383ba90b497a856dae1dd4501be8ec"
    "pt-BR"
  end
  language "ru" do
    sha256 "3e34a1d6f6295013b63c9da1d1c5168f457abdaba53065002c7d636be82fe301"
    "ru"
  end
  language "uk" do
    sha256 "7d59636b80988eaad6efe07eb8c5e41725b61b2015d37f3aef6f9eca7441c4e3"
    "uk"
  end
  language "zh-TW" do
    sha256 "6bfe8c3776651b420b76a548e0b2cf225182845da6130179f8db9589683519c4"
    "zh-TW"
  end
  language "zh" do
    sha256 "38a4b87d8e1bb2586e43ea04d2652c323f0320f83a6fa0fbb5e941a7bb7ab0d7"
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
