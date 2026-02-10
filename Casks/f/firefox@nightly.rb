cask "firefox@nightly" do
  version "149.0a1,2026-02-09-21-08-34"

  language "ca" do
    sha256 "b2806a34309b5ac2ca4346b258eea68e160725e2a39ae69270ca011ba5a4373f"
    "ca"
  end
  language "cs" do
    sha256 "8b19100b8281c74ec6601e84b16c51de8a6b602b9a4ff316c1db40e0db9400c5"
    "cs"
  end
  language "de" do
    sha256 "69451c1a35308c882aa952acd8a18100c4fc92349fe509258ab1dd382d1f5727"
    "de"
  end
  language "en-CA" do
    sha256 "dfdda3d197324bccdab5747388b08f7d4a73e41879c666904d04ff4524894377"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f56536d40a60af0aae70caf4698c5e913daccf95f16b82b22663c6886abf1039"
    "en-GB"
  end
  language "en", default: true do
    sha256 "30e3cabd59f73a025b2eae89bb6b6d110f21e5e704365ebc0bc639586e525c46"
    "en-US"
  end
  language "es" do
    sha256 "0906436b0a47946f04bdd3ff8a240fe1002d217fb73261a8edab074b2d269783"
    "es-ES"
  end
  language "fr" do
    sha256 "7541e5138e8b8e4887575754285fdf3f940cc1be6dd215b73c125154e17349c2"
    "fr"
  end
  language "it" do
    sha256 "571cab2561acd531fcf766cabbe4beab7ac984d1b873cc5ae87fa07791e3647d"
    "it"
  end
  language "ja" do
    sha256 "78a7362635932d155fb83129e3bbbb150f2217ab797b29190e5fbd6c5f0d53ab"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f8740b7d939b1aaf89f0ed149c8b69333ca1671938d964ac1987e6ad49da3502"
    "ko"
  end
  language "nl" do
    sha256 "d8178b489fb7893255443801715d6fec7082f153b3564cc78c02104f32db3b7b"
    "nl"
  end
  language "pt-BR" do
    sha256 "0de22dfcb1eaac482a80d05cab1b38733235a911d525bc526948bde3dfdd9402"
    "pt-BR"
  end
  language "ru" do
    sha256 "d7f66a58be05d8fd8aea48bc83e7fc89281a997223b5a78f3c4348f5d1fd91d8"
    "ru"
  end
  language "uk" do
    sha256 "1926ac9170d598b1b29b1055b5d1b5d80e05f007d87a3a018ac88174c3bc194c"
    "uk"
  end
  language "zh-TW" do
    sha256 "46c7935abc809d8ed36c618af843b17386c5b225054570ec645c86c10fa0db9d"
    "zh-TW"
  end
  language "zh" do
    sha256 "473be7926ebb56bfa9f9f4f2f569def2c19569700dbf9050b50f440df1f1e035"
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
