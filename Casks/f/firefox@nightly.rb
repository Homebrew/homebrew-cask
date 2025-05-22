cask "firefox@nightly" do
  version "140.0a1,2025-05-22-09-08-48"

  language "ca" do
    sha256 "f7a832b99068de95c6fe139406730d6b57b1c082688c0b6f6e254fec6881d29e"
    "ca"
  end
  language "cs" do
    sha256 "62b89a37dab19fa9c53fcc9f6dd78f7ed71b83da4904702b7902629d4b48f34b"
    "cs"
  end
  language "de" do
    sha256 "937e33d435255ddaaff4f830765b0df47a18305676ecabbd5648a8b608763409"
    "de"
  end
  language "en-CA" do
    sha256 "0b34c3c55ac692bd8b8b39d08c08c918b40e2ce20c17d2d319622d757ddf96a3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d3a051225c6b24df6b2db81e8a71723c9017acc7456b9759dae435ff2c14dfcc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "566910a92f06b3b43fcb75055bff33426a4f73b4c5ec66598bdb69a99f9f0f22"
    "en-US"
  end
  language "es" do
    sha256 "4eaf51e347562d628bb2c951f190dc42c08ed311db312e6157b1a8dd6d1348e3"
    "es-ES"
  end
  language "fr" do
    sha256 "cbae7e24d667f405e33d9a10ad16a9af9bc8697643c98541c71c4f6f95f28159"
    "fr"
  end
  language "it" do
    sha256 "77f1e7326b2dde2338cc7c8feea32521e86cc25cf03c39fbc7f7dc44f9465668"
    "it"
  end
  language "ja" do
    sha256 "8df7e87910b9e8536bc458749552d76ead387458ab768d79ed66066375c6ca44"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "488b368e30636b76e0d8019efbcb73948ee5e402d03b8c71937c5956cbeac21f"
    "ko"
  end
  language "nl" do
    sha256 "ff6150e18f371b3b4860e33d3d6b7d5948784eb20c8427b397080ef06b26c7e5"
    "nl"
  end
  language "pt-BR" do
    sha256 "e55cb5ad0bbf4904e4a41ca89828e4a508416e8fd544b070e6a64eee63b1ab32"
    "pt-BR"
  end
  language "ru" do
    sha256 "449ff05aeddd87fd072a060a446f3c0e87645a7e9f630cec796e4877357625d6"
    "ru"
  end
  language "uk" do
    sha256 "c9fae7a3cd65f2444f8b78028c9d504b11f80e1caded61b3d1db706268699cee"
    "uk"
  end
  language "zh-TW" do
    sha256 "a022f4236d9e51ed6fc5d4e705f4de727b94c00b34c9f31cf9c634b6489c213b"
    "zh-TW"
  end
  language "zh" do
    sha256 "0a34e5aa10ae7ff0d6efffc513e901b2d3ba4625a813d4b5814aa478ed49ef10"
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
