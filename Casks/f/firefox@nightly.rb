cask "firefox@nightly" do
  version "147.0a1,2025-11-23-21-14-59"

  language "ca" do
    sha256 "937285610a559475ab63e8fe8632aa08d1887fc7d11f25a9783cb79dc15717f6"
    "ca"
  end
  language "cs" do
    sha256 "a11d2c35451672764a3eb9bda225ef1f5b9fd869a45a2b2b57e21433fde2dfde"
    "cs"
  end
  language "de" do
    sha256 "d9dc470a46672b09e032de2c9f05a6b75cc453622935e466e1ea53cb2efd5f3d"
    "de"
  end
  language "en-CA" do
    sha256 "bfc34e69ba3af19e0637d35dca6059e3edb9e5317b1db4b601cc2cad05d78947"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4d187e93c14a51e278eb66c3f2253b707bc2c1c791e60cbe2396e8c508a73cc4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f376e7f6bcd1db85f5eee938322825363d73a318f9899034505a9f420089fffc"
    "en-US"
  end
  language "es" do
    sha256 "039c7f48dbee9efba1a4a5c26428b35e5eaa2c3a3fca251216cf4d4303346748"
    "es-ES"
  end
  language "fr" do
    sha256 "1d1f894f0adc2c01da3a2da08f3f529e26db12d7be37855226bd847ea2bd4882"
    "fr"
  end
  language "it" do
    sha256 "b9cfc9bc7b5c9d69f3ef680d98c9c5e5d3a1392e057489448c32778345ff8523"
    "it"
  end
  language "ja" do
    sha256 "acbbcde5cea8d3feed309ca52c6a596e089eceb403234b53f752210e9d715843"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8873f6d035cd8ac2b51d495f2dc38a7054f824a4d7ad7af630325874c810a591"
    "ko"
  end
  language "nl" do
    sha256 "2200d4fa90cb8f94056168a4594092df13c3ad32d1ec15681a961cf1048297f4"
    "nl"
  end
  language "pt-BR" do
    sha256 "9a70499304dda03b881f7eb23c6e5fddb3ed695f03b36c49b6bda4e7d013065d"
    "pt-BR"
  end
  language "ru" do
    sha256 "53481f44bfd1e674115f32e21cdf90fa328b9b81f1ed1349877d21daf9bc10be"
    "ru"
  end
  language "uk" do
    sha256 "91f3a2ef172132e34b5238a16304762f180a0f82aca80d561a83120cde813635"
    "uk"
  end
  language "zh-TW" do
    sha256 "eaae62c79c45cb8a3c081efcdf0009bb4a6d79db2315d773bf6b48077488c644"
    "zh-TW"
  end
  language "zh" do
    sha256 "a57ca865d6a545bc222427f3fb10f28aec347dafbe6fe2fc3c78fa225db7b71c"
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
