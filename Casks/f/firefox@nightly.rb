cask "firefox@nightly" do
  version "157.0a1,2026-08-29-09-32-00"

  language "ca" do
    sha256 "21497670dd6d62ddec5e8e6271be26282f1d65e43b57909c286270d17feedaf1"
    "ca"
  end
  language "cs" do
    sha256 "e06479809b7ef57294aebf6b4b8c42d5a069212e9bd2941d51c1be30cd10085b"
    "cs"
  end
  language "de" do
    sha256 "a97d12fbd3b94b99db0fbfc1de6be89e6d6baad900e58804e11f44b7db26448a"
    "de"
  end
  language "en-CA" do
    sha256 "404cf0030475c3115c355f21d879ddd2c473d5a90e5af8ab7e7ce81b8e075975"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6d21f47448ddfb1f4dd1cb514a4e5a63ad7af933bfd3ef8a434bbad93aef78fc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3867e5fdbcca21c7f39ecbe15cde766dc1e0dd02df4aa7a52bdd364cf229dc80"
    "en-US"
  end
  language "es" do
    sha256 "57f8737a38608ca85b866600ecb75b71ae9824cd32a8624c674b21d5b2243880"
    "es-ES"
  end
  language "fr" do
    sha256 "2e8f835811c00c558c0326d454a2d74597d269ef07e445e4102975e7bf216845"
    "fr"
  end
  language "it" do
    sha256 "491f6e8487310683527c63f2d460157c568563b26d056bf5a6b979ab5543cd85"
    "it"
  end
  language "ja" do
    sha256 "c0300231318b855dae5ec756a02dda913dc05844a02211629ed2ac752ffebd0b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c3a4bfa66838565516200f4f654e708120eaecb576d01f22301268fefe86e5ca"
    "ko"
  end
  language "nl" do
    sha256 "1738ba739a6485684eb2de5e9d15d0ec2909ff96c7b21c98c51a30eb1fdb7a5b"
    "nl"
  end
  language "pt-BR" do
    sha256 "a87dd1b4c235387bdb529007ab6e8ce1adfda7c31159ffc3f7aaa1bce7775de3"
    "pt-BR"
  end
  language "ru" do
    sha256 "d3603b908cbcccd1f9731cb60310469b92230ee4d09cdff8afbe6543178a044a"
    "ru"
  end
  language "uk" do
    sha256 "54c8065ab49cbb8fcef58d75e476917af252e06a3fbab1918e00318d131b9cda"
    "uk"
  end
  language "zh-TW" do
    sha256 "977ec5108ee9020378e4f4f1baffe8dd8bc896db42f910830cf3b56825bd55fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "f3f3346db5495af8f94be5f4da49fd7087443f4c6831eda41577302d2c6aaab3"
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
