cask "firefox@nightly" do
  version "146.0a1,2025-10-30-09-47-25"

  language "ca" do
    sha256 "874414a64ea52a6d1ff805385ad42d355ce815d1e3471cc195caf9fca420613c"
    "ca"
  end
  language "cs" do
    sha256 "83e2ade1fdb0651eecb8b41acf9bf2fe7ba3805e751951db568f3221b2f766a1"
    "cs"
  end
  language "de" do
    sha256 "74e8278e57370a46cc6be191167bca9c5160eada791ead186a12de16b5f9a75f"
    "de"
  end
  language "en-CA" do
    sha256 "187f9a3f583a58822a255ed247d1eec4848f3be2e208402ae256e80fc8fb96f0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8b0bd3fa78ff90c16c64d4462008851ac081bed01bdcc487ff824063a469807b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dcdfccb9e5bfabc136d465cf151c54abc199e108a5ab5e1181990c2b63076227"
    "en-US"
  end
  language "es" do
    sha256 "0e921b18f7e9dcf8655eea5d458a0ec2972b150829df9e0810975c565fcc93e8"
    "es-ES"
  end
  language "fr" do
    sha256 "7cd6e3e46a898346234428620941609d691180e27d5e6fbb55010f5b5ae436d2"
    "fr"
  end
  language "it" do
    sha256 "1071b3205ddc6ef22aab32d52b28091b09be944c014a658fc7c41306d7f2789b"
    "it"
  end
  language "ja" do
    sha256 "3b2db57cf6290bfc66625de75aae3d3d187cd8d6c55e94a7b0290b024bd4010c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "704fefc4c9c2ed0ef51b577c27dd6cf464fe165ea5f36c384f21fb6e0cfa145a"
    "ko"
  end
  language "nl" do
    sha256 "4a859d0525f32b209c2927e0e5715cb6fd1b42fecdc75dc6a8a7ac5d0ebb2fe2"
    "nl"
  end
  language "pt-BR" do
    sha256 "177145e52e87e235d5951e2eebfa0870351ad2b298f384c9a6b6b168e496ba56"
    "pt-BR"
  end
  language "ru" do
    sha256 "240172c25ad5d8a92d92d603ed86988dfb9d7b9cd86d2bb373dc8f3f5de5f8cf"
    "ru"
  end
  language "uk" do
    sha256 "cfafe0125c10a1c165240e11905ae9a96e0b97760a14707fd2278ca1bbc0351e"
    "uk"
  end
  language "zh-TW" do
    sha256 "c68ad703d109b34761fce3e3e9d78206e906c811b10f1120be0819b2d9f2abce"
    "zh-TW"
  end
  language "zh" do
    sha256 "651df46343cfbc0072867b96762bdcf9f8f32ef389437e66b573013acd1765e8"
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
