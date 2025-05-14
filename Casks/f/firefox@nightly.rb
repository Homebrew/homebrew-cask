cask "firefox@nightly" do
  version "140.0a1,2025-05-14-09-36-07"

  language "ca" do
    sha256 "d6211f3645ce356bfbb8207b248049a245e32e01722dda086f3014deea19cf67"
    "ca"
  end
  language "cs" do
    sha256 "a871c5e29be430b9165f0be49099b5637e3105e3e6ab4e1bf19efb6fac6031e2"
    "cs"
  end
  language "de" do
    sha256 "84a2e2fb20e0ee6d6c744161dc4ec759bedb0b6c9f26b51488956d7aa4b03b0d"
    "de"
  end
  language "en-CA" do
    sha256 "72099ddd072275a412fa5d4bf985feae63b06aae584c8954df88d0a376e41fab"
    "en-CA"
  end
  language "en-GB" do
    sha256 "096fd8d73c0a0615fb594f38373bd4a178574a3a8aab43576171086a714d79e3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c357cc7ad7a8acde920526182b008a93deb537ad2551f55d17a9855d32a3d5e3"
    "en-US"
  end
  language "es" do
    sha256 "12c75e1dbe8affefc576ad4ff6260237e877ffe6b3a036c313a56d94e061ab24"
    "es-ES"
  end
  language "fr" do
    sha256 "9b1e54ccb9a94a8a20c120ef2f7be0cb3bea7cb460dcc30130ce54d14fe0eff7"
    "fr"
  end
  language "it" do
    sha256 "bf37ac2d1b4ed7eba927a631373eff82c4d61635b21730b50d2ffced32033048"
    "it"
  end
  language "ja" do
    sha256 "5931880626184f302c41f4c0fd51a05472de97d8b8dd131e1f59992f909eae2b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cf80b9153d7a4e065a915f2bc1157880d5d4ea9f2254410e06083b5d2bd978f3"
    "ko"
  end
  language "nl" do
    sha256 "2d9fb546dfd1a921aa64747e3db434f575c8f9b38a43aa83d02af5362a626266"
    "nl"
  end
  language "pt-BR" do
    sha256 "2eb27171e14d1477c8b4c1c1dff8cd4056ef24eeb9db0c6f0f61a21c3cab9f76"
    "pt-BR"
  end
  language "ru" do
    sha256 "002322352331b6a2cf6b91c938293d7672836c0900e2f5aa610832b98d9c07c5"
    "ru"
  end
  language "uk" do
    sha256 "cb309eac1fec9126abb861403175b21e9056f78f92a508a86a8b74b9bb84d7e5"
    "uk"
  end
  language "zh-TW" do
    sha256 "79c3f9392390c468504ad3400208386cc81670d932dfba68b01199e393761fc8"
    "zh-TW"
  end
  language "zh" do
    sha256 "2b1c5e2e721576d4027ebeb20819364daa0528783dd33271b8ec0de4fa28f24d"
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
