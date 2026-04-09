cask "firefox@nightly" do
  version "151.0a1,2026-04-08-16-03-18"

  language "ca" do
    sha256 "33609c51a1cc968970180631ac26bf449a4ec0ea1a710b9a7abb0269b07fd271"
    "ca"
  end
  language "cs" do
    sha256 "a822d86fc48eda2f7aec4f6167600eff2489ecaa79b9cc1c74aebda70941d3bc"
    "cs"
  end
  language "de" do
    sha256 "86ddc9ed241e9a9373d3bbf4e1342db27dfa25967644af102d35b808c2f7888f"
    "de"
  end
  language "en-CA" do
    sha256 "45d6dd151d9b34a4e9b6c767bb6aaf8658c662214913ca0c3f0fd821ce0c64f2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "53c97ad9183a2e0b5ca10b35631892ae4d641d4f7b70ef71c9c639c55d0cb0c2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cd58989770c27e678580fcafa740f21d5b42678bc534e4d86b4b18727bcb1ed6"
    "en-US"
  end
  language "es" do
    sha256 "314e8827f9c779c6c3b60611ea9187cdfb544adc99286016c179d948000f6a2d"
    "es-ES"
  end
  language "fr" do
    sha256 "1465c3adf41f61a2a09b5946bc312c9402626ff046cfca9d2977f0b11ace933d"
    "fr"
  end
  language "it" do
    sha256 "865608796c1bd3efb1203fad834858edf7ba75ffec0133d01bbb7febf7b21cd2"
    "it"
  end
  language "ja" do
    sha256 "67bf08dd7b4c3b5c522bd365e9db9406052823c56831b17525dc0af6760cd723"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c2341150ee63051ce60d3747035ef27286de57047e6e2574e1ee7cc939fbb7ce"
    "ko"
  end
  language "nl" do
    sha256 "1f9ae484789ac106dc3605253fb7e7ddc5f112e7126d7f4f9146485e85aa01d0"
    "nl"
  end
  language "pt-BR" do
    sha256 "bcedeab610fb150a3f4f763e408d66ebe8ac812122da4f12af0e3347f48b0422"
    "pt-BR"
  end
  language "ru" do
    sha256 "bb230c90c3e70771c25f041928b0307ca362cd489b94e5308676e71f4da6811d"
    "ru"
  end
  language "uk" do
    sha256 "15fa388336ae9d57486f179b8a6eece561943a391a6c1acc7c5081ec1e8f953e"
    "uk"
  end
  language "zh-TW" do
    sha256 "b9a3a348108fb18084135eb34317df0de56185dcfbe95361d49d414ece27f579"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae22fa6e207013c7d53d4da1c3aa6199bbe8ab15c19e0128e7a65e79c9f6eaab"
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
