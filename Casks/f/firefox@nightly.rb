cask "firefox@nightly" do
  version "151.0a1,2026-04-09-09-39-41"

  language "ca" do
    sha256 "308bdf6c0780e515be6d84ea2efbb5a5d003874866db105820afe68247fba6c2"
    "ca"
  end
  language "cs" do
    sha256 "a2a1be4d0a392cf14bc4ff488c314762e5ab6a7535ebe9a095d8322d1f641f2c"
    "cs"
  end
  language "de" do
    sha256 "cb347e6a347fdd798a3db0792f915415f0ef67b8991b28daea803a887c665737"
    "de"
  end
  language "en-CA" do
    sha256 "bd3484e6fcbffaad015c744914c5318dbe95be9712ceb200d44e6c962b092dca"
    "en-CA"
  end
  language "en-GB" do
    sha256 "42dad60e41b865f0917b5eec3ab4ac9d22ca757f8336cc5567f19b64f0a01124"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fde73b0ffb3af12b4614dd02e453c9646a2217aac4f823b70e30b1baeaa9201a"
    "en-US"
  end
  language "es" do
    sha256 "7b09dbebe82a28f1811f4c6beb478e74a1e315f66158775b3a5f2627dbc66f81"
    "es-ES"
  end
  language "fr" do
    sha256 "48349d884e8ba5080c4106538ef33fce96d1e5c1fac578faa11412edf4a6aba6"
    "fr"
  end
  language "it" do
    sha256 "9bb074429dd0ab131cce5d47d0b853bbf4e53303cc6555131817086eb6266c27"
    "it"
  end
  language "ja" do
    sha256 "9e5b6bea3e33688a9902dbf51566281719d85e1b053b181abceba464fb1a23d0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3b4cef3087cfa55e04276daa9ec8a41d1a200fbd051d752b9e01e17cb43a7dbf"
    "ko"
  end
  language "nl" do
    sha256 "ccf6aaa40b15d117a8d9f048a057294fba33e06b5107cce9a08c40340fcf27c8"
    "nl"
  end
  language "pt-BR" do
    sha256 "b92d5ed3116d06eb4c13c39d1db50a2d11e92c927e582b53fd51148a4d7ab8ce"
    "pt-BR"
  end
  language "ru" do
    sha256 "bd10976a9b3d0a7190fdee3b7e4765fa6af85298ef4eee3bbf802b6499fb11a8"
    "ru"
  end
  language "uk" do
    sha256 "df50fa3be5814a38d1b20637bebe9d7256239b7de77224657ef986accaf06794"
    "uk"
  end
  language "zh-TW" do
    sha256 "d19270706943f70646f9f8f58c2459561fbab30050f23a297280301e4d57d08b"
    "zh-TW"
  end
  language "zh" do
    sha256 "642a45b5e72731d076ccf5b94f23cb1915b3f6a6e234ae507ca7ca8029355164"
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
