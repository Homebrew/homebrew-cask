cask "firefox@nightly" do
  version "152.0a1,2026-05-10-21-31-10"

  language "ca" do
    sha256 "7dc222fc599caba0ede0051e56ef1b845106d808a3f60cb7ffd08462857058b2"
    "ca"
  end
  language "cs" do
    sha256 "2e457fe4e79c80b436f8f6bfdec3059d6fc484c1b463eff7c5e7873d9b0b3999"
    "cs"
  end
  language "de" do
    sha256 "7ba03b2eb165cbfccaad1272a0c514f5d6db80630dc23885d0bf879cae5a6bbb"
    "de"
  end
  language "en-CA" do
    sha256 "7beefc065701841d39a396a3a9fc07229cc75408234c7e69fc69798be103b308"
    "en-CA"
  end
  language "en-GB" do
    sha256 "50f197153e850e9a35b4d20c2b02c092dfc4ddd16c756e929da30d2ef61c72b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "04c98b7751cd554fed70cedb222e2e5282cb9be3b2a8521f86effb6a8ed23215"
    "en-US"
  end
  language "es" do
    sha256 "ca2fa545e8b4779cf59965b56153d76e91ec3a972117b9f083a0a1b86cfcdeca"
    "es-ES"
  end
  language "fr" do
    sha256 "55f72c491631ad844a421b65dd15302a82422d02b955a8e09efa6f58771f42a1"
    "fr"
  end
  language "it" do
    sha256 "9462a29570f17fc62e0fbec59dbfa2976b56c0adf08b573f5ae69a6dd1fd198f"
    "it"
  end
  language "ja" do
    sha256 "2b1eaed0cc1df100f68d6a27d20a63d3e4ba92f5b2a09f6142307d376d4d0606"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e78e342a3187aa3dd50641911820a4c4c3e3fce1011980e7e384f74995c4bccd"
    "ko"
  end
  language "nl" do
    sha256 "f6a9901134feeeed1f450b828732c1a51998d7ca1de428de9c4da75d8ec6e190"
    "nl"
  end
  language "pt-BR" do
    sha256 "742252cdc05e51dd3abcd7799737ff4728b6a9b9f18b38134526718e9a7ff6a0"
    "pt-BR"
  end
  language "ru" do
    sha256 "c5e9241865ce3008fb139edf5c72f365e994a291a161765ee37986bb074502e5"
    "ru"
  end
  language "uk" do
    sha256 "e308d0271fd38ed70a9835ef236407a0ef1ad3ad4d510ca67eee35ddfbf8ad53"
    "uk"
  end
  language "zh-TW" do
    sha256 "7ffba0db2fabe7f7f40bc9bcfe30428f181c1d70d710e2a83613430ff64a677b"
    "zh-TW"
  end
  language "zh" do
    sha256 "ad1a32c14f63c9683e8526cd6dbe9bef4df922ea7f3d457218b915b1ad3e4656"
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
