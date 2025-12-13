cask "firefox@nightly" do
  version "148.0a1,2025-12-12-21-37-41"

  language "ca" do
    sha256 "eeb7efd19ed033373e6801fb331586546845ee63bdc69648754184d15511a52d"
    "ca"
  end
  language "cs" do
    sha256 "1034e67c3d6da8ac3f3d4d208dec19657dd8dc8e6bf12087c9cb0c7aa24915c0"
    "cs"
  end
  language "de" do
    sha256 "68ed97d757e6fb426c20a8d51eaf682085d294c95d93412e357002ed6ffa302c"
    "de"
  end
  language "en-CA" do
    sha256 "26a44d7453fba41953a3331e9166df7f5cd365c14e0670619589df88e71ebe09"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d1dc85a060fc4bbbb9b4908d308d85f833338fdbba4e143ddd412e787d53276e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0a7730838f2bdff69536a1cf2e74520979c190aca8cf728d2dfe63dcb9a43fe7"
    "en-US"
  end
  language "es" do
    sha256 "4050a49383ab91c717cd841737a61a48b4a88d4c04a1f7dfa624489fcbc8d9d8"
    "es-ES"
  end
  language "fr" do
    sha256 "641a5f3b80ab6cbd647b4c70047dbd6e6aff85c5dfa41a140e91bc3836251b8d"
    "fr"
  end
  language "it" do
    sha256 "0e5a37383fd37fa8de226f3be74d2252163f673ea9418c1711871fe0e7254052"
    "it"
  end
  language "ja" do
    sha256 "5f661da60385aa31e847aa9693696eab50cc9417b1c5c73efbc5548d70bafc1d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7a8e98bc6238f3f58006a31e5b5f4d0f16d4579d7c16a13b54ec2d6845f3bc1f"
    "ko"
  end
  language "nl" do
    sha256 "65c14b633dbc6c478e230b306e30de4c02001c9c0164273950db0781e7116790"
    "nl"
  end
  language "pt-BR" do
    sha256 "afe36b5cf7a35bed9383d01d63c5cfcbbc7faf9bcf9630832117a39989d51984"
    "pt-BR"
  end
  language "ru" do
    sha256 "44bab218c27a77f6eb81d2406b1d50ffac0a2e2f8ff057c978bc67cd3103900e"
    "ru"
  end
  language "uk" do
    sha256 "96751355885d5b21ab8d4019094510b8dca896775692ea9d8349a6a08b40ba40"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f3e649e01faf609b304fa7037ffe95c0f95ac0847e7347a818cb349e8dfa522"
    "zh-TW"
  end
  language "zh" do
    sha256 "11089fff88fa757f2e70c6c0acfd5b6b7f9eebb71ce3c36d396d8857b6fcba53"
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
