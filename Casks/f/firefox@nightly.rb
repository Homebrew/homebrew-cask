cask "firefox@nightly" do
  version "150.0a1,2026-03-20-20-32-03"

  language "ca" do
    sha256 "83ed8b3054db33ebcc402bb191118801e8f0b33d81b4d98c0671daeb3802131c"
    "ca"
  end
  language "cs" do
    sha256 "ab5f36a2a142ca573c05f5eddcc5cdef5465c815b166f72ef7f9c006f245026f"
    "cs"
  end
  language "de" do
    sha256 "8fae63f0bb5caeb96069309df738b89dfe93aa12ee9766060a1026040440cf7a"
    "de"
  end
  language "en-CA" do
    sha256 "9dcac680f8881abbf43ed24901adc1e6ec28b4d19bd9f4b7364d72866532cbf0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7f4778a0f25a51bf0db85394838dd63681d6bb743033a8ba5338cd8a105e5e92"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ab5ce1314b2a6d538cbd0074c1b2d938cff5e2010ca2a480c583a1dd3e45f1e0"
    "en-US"
  end
  language "es" do
    sha256 "4209e72c7b482f046c48ca8c744bdc517b55b36e77980652c4787eff7a17ffcc"
    "es-ES"
  end
  language "fr" do
    sha256 "5afe614bd97ff60afdb2d6f749ccf6351041364362c6c35e280f90cbbf944348"
    "fr"
  end
  language "it" do
    sha256 "1432b61ae1bd6a5e86bb4a85d237edbc5b95e120dcf1bce3ac51490aff7b4b77"
    "it"
  end
  language "ja" do
    sha256 "97c618f2a980ba9905a0615ad43f4f5919cd5e08111a9613bf309ab8eaac7e03"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "206aad745a1fe15ae30e58bf93f0f2671027a71302d0810cdfda71590ef18f26"
    "ko"
  end
  language "nl" do
    sha256 "3ceba477e66a70ad5309a8bd4a30ec24b32a082ee5c068b56312abe2cd6c62ad"
    "nl"
  end
  language "pt-BR" do
    sha256 "e0b18fde848f84e5c414056d6c70c6ae5fa8d890f5d480c126ac0fe16c28c9e2"
    "pt-BR"
  end
  language "ru" do
    sha256 "d0699d80f4c5592a815cac3445cf7096d1452b32a32a8e5ab3a9d8c32ce0124f"
    "ru"
  end
  language "uk" do
    sha256 "c4f452c916780acf766c60fd293f6325569f411ec3cb1716e1e93dfda953ca01"
    "uk"
  end
  language "zh-TW" do
    sha256 "02da0291be9bbd27983c348567129a5ab669a171cc6f065aa6b39d19c769e68a"
    "zh-TW"
  end
  language "zh" do
    sha256 "0a25a4ef85530e04de893f73ca8fbc01c1bb5b960a2aa7d2ed0477400930c9be"
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
