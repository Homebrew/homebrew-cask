cask "firefox@nightly" do
  version "149.0a1,2026-02-19-21-52-06"

  language "ca" do
    sha256 "a3a70910bed2631d0419f1c70748dec9629bf02e3fef0bbd302538b62ce3a212"
    "ca"
  end
  language "cs" do
    sha256 "1b33af413704c05b497fd98d321407d467c35841688cdc3b596cd0c781092130"
    "cs"
  end
  language "de" do
    sha256 "ce5b5e6d8f2fcc49621fff1bdb4de0ad0411be392bf89162a5d7e100c1f329df"
    "de"
  end
  language "en-CA" do
    sha256 "4312a73c516a7ea39b8fc68c2779eee6254ca76c4afe6f5b3002fa7b753e5087"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1b35f2291962649de69a003dde0d37857d9b83c24d35a6c1f2783b9f99e1fdbe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7e8fadb2133c14fc513f647856777180a1a61039a978be9b414ed26171ec3851"
    "en-US"
  end
  language "es" do
    sha256 "20a25a71c3977bc2b4bf4421f23cd243de14e4155820377c124906f689576a8e"
    "es-ES"
  end
  language "fr" do
    sha256 "35b8766b3ec393fbb0b64822b8aea26d9f0712d6fe44df9886420af3eeab6cb1"
    "fr"
  end
  language "it" do
    sha256 "a9d7f9eb39d2990cd735121d2821a215c6bdc3bbdd2241c9bef0add58b312188"
    "it"
  end
  language "ja" do
    sha256 "ce2395af6357a7272093894d5eb4f3a12dd5a8af100a97c6758a209d59b0e661"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c81c3e8943238551a15965bd891d4e0d1dacdce712e1c9f9eeaab1617eb31ade"
    "ko"
  end
  language "nl" do
    sha256 "74e5e43adf85db82f0f5d221c96f4efdc4741bbce3b335a187d1d8be09f27367"
    "nl"
  end
  language "pt-BR" do
    sha256 "a6335ad7bc4365603b04429f54b6ef8ba4e6d2d73c259765852eaacb0b55e5dc"
    "pt-BR"
  end
  language "ru" do
    sha256 "39494fcf901834215c5ddb3f2fc174eb4dc3e4ac51ee3aca7ba8f286543ce2bf"
    "ru"
  end
  language "uk" do
    sha256 "a32fa6feab9d1894a0509855d0f91341b69d4baa659b143bd395c8f127b88cea"
    "uk"
  end
  language "zh-TW" do
    sha256 "2b5a4a3b13232b6d073085572b2ce5c4656ececb26a5d4599a7da17175a90b94"
    "zh-TW"
  end
  language "zh" do
    sha256 "120584e176edf76014cf04699ac8e02df301fa967934af39b3c34bcf5a2a7135"
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
