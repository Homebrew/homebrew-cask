cask "firefox@nightly" do
  version "146.0a1,2025-11-08-09-06-27"

  language "ca" do
    sha256 "3ec4df2bdd5896a6a467cf81be79066d03584b67fa7b73a75e397821ae757b0b"
    "ca"
  end
  language "cs" do
    sha256 "0ec9499b5714553ba48deebada760f5440645dfd3c734dcb8da98fe78a850e8c"
    "cs"
  end
  language "de" do
    sha256 "d79e415f96433cbd4d73bf102ff050984a74d170555de11588c1f96db86038ba"
    "de"
  end
  language "en-CA" do
    sha256 "590a6b4899c16ca9a1275f8ea47d7e57a49b94b89002a394de8e14a8aa20d49a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a31733417f9d9c21bb618cd8fa74e4453caec4f0c79ccca60989817fc8952cb1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "decb9a9c4f487f5579b39cfd6d547a263c90d0f2a9350c3a9ef1cc369403d0df"
    "en-US"
  end
  language "es" do
    sha256 "f84fbd5da300d3296fc0b1f5818c12c5aa2d72328318df2c6131a2eeb315056c"
    "es-ES"
  end
  language "fr" do
    sha256 "8f8146dda0180dd2c6df9467aa237af05032b4e3c8893c3934cef8375dd5fc71"
    "fr"
  end
  language "it" do
    sha256 "34fbc1e341d9b23b17d0017b01f4304683368801941b574bedf06ea3413f72bd"
    "it"
  end
  language "ja" do
    sha256 "b5b99b562593197d30f7b28146340b6ae5c9c07c5a8b7fa91d9e945a18673bd6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f1e5c82254d7ff8aef7063685321c17554cf716a71f521b27f87e455ed8885ae"
    "ko"
  end
  language "nl" do
    sha256 "187a68012a3c8ffce33d622c7430de003665106a51b935acc7a8552cee4a5c13"
    "nl"
  end
  language "pt-BR" do
    sha256 "42514862cc594e3b0729e69904abb638913fcb9041a12d651bac47482c7974ce"
    "pt-BR"
  end
  language "ru" do
    sha256 "25f10650a745f806126354648bb8389e77e5a6bbd97325c371f602548726e0e8"
    "ru"
  end
  language "uk" do
    sha256 "f8248b845d4718fa842c23f8030eab55ce39fcbbc207c72d234ece3a6fbc18f2"
    "uk"
  end
  language "zh-TW" do
    sha256 "b6078fff43cf36dd819b7cbc55b7736813d0cf9f2c2bf7ffba7262381d8d5444"
    "zh-TW"
  end
  language "zh" do
    sha256 "0c6643ea053037b3bfb9e5c22a1c29a5d55df8db49d08dc0761dae0780bafc32"
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
