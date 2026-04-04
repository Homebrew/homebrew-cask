cask "firefox@nightly" do
  version "151.0a1,2026-04-03-21-20-07"

  language "ca" do
    sha256 "0fd1c676f64a817842e93f392d28b2ab2659f0a4d9b21be0268ee9423ca6dd0b"
    "ca"
  end
  language "cs" do
    sha256 "7fe7f34edbfe63ccdd68ef9c2bbca8339f296d8e1175708589a95a0215361197"
    "cs"
  end
  language "de" do
    sha256 "1e09ccadc260efb6aa59e5caa770227074802b4db1f133c31ff1301d9719b334"
    "de"
  end
  language "en-CA" do
    sha256 "2f07c9a7c4bb333fe62b9064abfbf65c6c56c964541cf3d22acc73f71155792b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c643dc073be4cf0e9c1f1805f47ad7d4afd04b73a1020fae987a9727c0bf8725"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0e469de602bdeb5b270f9b83e77540ce8f2497495488185a6f582ef4700c5f14"
    "en-US"
  end
  language "es" do
    sha256 "d381bff8e796a7da476bdd31dae4e91f718863f96bfcb2335bbdf6abe695d8e1"
    "es-ES"
  end
  language "fr" do
    sha256 "51995b821462575a2121a87eab46f85b79aa78592cdb16dacb9637b35203db22"
    "fr"
  end
  language "it" do
    sha256 "b618f82a504d4dcd2a24fb10bcd8666c437b21237353049b6a99081b1b618ff1"
    "it"
  end
  language "ja" do
    sha256 "2ee678806e42974b58957870fadd8f111365afb288487da3cc609e3d60b86d2e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a7317c42f5b23bc8bddc7fe5085c12d97e1b40086c0a2b2701f5a15cf13784a0"
    "ko"
  end
  language "nl" do
    sha256 "5c907a2b769080b5735b39f67ff291f1aaa5b37acf1aae7a84f06c2e452d9f69"
    "nl"
  end
  language "pt-BR" do
    sha256 "f4653e5d5514a01fae415bc3017bbc7d308765e2db4df73a93690e4c8782f09b"
    "pt-BR"
  end
  language "ru" do
    sha256 "d749bdc4ef8598680670eb427d11cf11d04d7596735b8a6eb177b110f0fa12de"
    "ru"
  end
  language "uk" do
    sha256 "99c02724c87e2aee4f71e51db35988d09a8f5699456f8feed5139ec585f32dec"
    "uk"
  end
  language "zh-TW" do
    sha256 "a8b467c7bce7129938186c9c5551f4573219abc0d1e1fb820fc8f08f02d34a93"
    "zh-TW"
  end
  language "zh" do
    sha256 "f1eeeab392e57dec08f0fbf78e976f2f19501f52e6b4c1c7ab98c07784886596"
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
