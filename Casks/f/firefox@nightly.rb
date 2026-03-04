cask "firefox@nightly" do
  version "150.0a1,2026-03-04-09-29-35"

  language "ca" do
    sha256 "318133f7fbc8ab424cf99fbdfb4f5719fee6198edd85831cd2d0eb74cf3c2ee5"
    "ca"
  end
  language "cs" do
    sha256 "53ad1106e6194c580a7d6bd8820765bad2cd1d9992a7be924a790d2497903420"
    "cs"
  end
  language "de" do
    sha256 "a113e88b8aa4c92d9f150fccb7251849a02bea8ee8049c78d99e5a5300886eb8"
    "de"
  end
  language "en-CA" do
    sha256 "d16a921b5260fba938491d82b394aa7163c4e0f3b8786f318de0dafc41c69cd0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2a7bd617ad94c64007d4e4cf2f4d7b820eed65e9a54b3724c4a386bb8d13552b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d42e46cea4ddbaf6fd0cc1c8f5c82f2bcfd22b7109cd1f59fba92186b8d1ee9f"
    "en-US"
  end
  language "es" do
    sha256 "f940b31ea2d8468f52670b7f5810ed8dd107ad2a1de41b1f9248d3718c60e491"
    "es-ES"
  end
  language "fr" do
    sha256 "6b84886d14acb320138b22a0dd1ef8edfad9a7811db2743fe23c047dd81b0b0a"
    "fr"
  end
  language "it" do
    sha256 "9a91c7ef9bb008fde97620e9eabb209f00986d63c782d64b5af299e79c53bdcc"
    "it"
  end
  language "ja" do
    sha256 "16a487d47312bafd5bf188596d41cfa5cc32f811bdeed8fb8d81df7e0355f04f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d7fb6ec6b6401e1b544d6c6fcfecf1f10efc70c2855bb5a887279d7fdc7c25a3"
    "ko"
  end
  language "nl" do
    sha256 "8e8b17a605a6fded87c2b07dfe5aab41af969c0d483f48cbaf2d7c4fdfee6d6b"
    "nl"
  end
  language "pt-BR" do
    sha256 "3bfd3c0bdfe8b3192b047949672453ccc30b8a200678ef270ef5d1122ee06f29"
    "pt-BR"
  end
  language "ru" do
    sha256 "c688750a4b428445e4f5d540edeb4cd5b275d9b2d53f4389a230db6c9613336f"
    "ru"
  end
  language "uk" do
    sha256 "2089efee0a8dc536a9c35324d21514c4673c70e575dc5465e090afcaa845db6d"
    "uk"
  end
  language "zh-TW" do
    sha256 "4b89882aa069c2d79e2ea5cd58592f947bd455235cea62012fc4512808690a89"
    "zh-TW"
  end
  language "zh" do
    sha256 "eedae6f5423b3ec1a80e16465b1eca462f55056f570d141d266fc5fffa525848"
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
