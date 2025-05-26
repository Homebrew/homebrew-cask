cask "firefox@nightly" do
  version "140.0a1,2025-05-26-09-52-03"

  language "ca" do
    sha256 "eff67c3c96a8cef33b46d3ec1fe2db8ee88ea3800c4cb1fdf5462d44d216826c"
    "ca"
  end
  language "cs" do
    sha256 "83b61e471fdbf8cd143d94bf5551ffa87d55554b83045a5ffda48428a05652dd"
    "cs"
  end
  language "de" do
    sha256 "1d8b4db7525f7d39f4d09d0f34a1355a30937a1cf9868d09b7f3fd3d93cee61d"
    "de"
  end
  language "en-CA" do
    sha256 "7bcf1f5bd564e357025f5cc157b115065044f1a3f158814ecc0d41c934c7bfbc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e1f8b73236a994bdbc91b8eef10651d8dad0dfdacb02de5b5efd492c0546e1c5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a9525c070ab1d3a3428979f797ad0e494261ce4c9b7bd3ead485e1f758bfe916"
    "en-US"
  end
  language "es" do
    sha256 "6a33ce9711ebc04dfdb722d58530fdb87302d6a592af689cb7427ea474288247"
    "es-ES"
  end
  language "fr" do
    sha256 "fef2c225d5fd1a7f6be630bcfde28b6aa47df04b9d0fe22a38978245247b3f87"
    "fr"
  end
  language "it" do
    sha256 "45ebf1d01bfed05d6bb3b5122bc8b81f216509246b4a4b0fdb60ff8025082bd4"
    "it"
  end
  language "ja" do
    sha256 "f4683b2b458766c61fd20cb9eab86d293357041fd6d6300697b56f6ca0b313fc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2a497eeebe686eca3c8944d12be0d5538bb11a3439fb663992eeaaac1ea0f25c"
    "ko"
  end
  language "nl" do
    sha256 "1fb3dbb1f069dd2cd0ee0cdff10ae1f31a3a631003754e6e584998304205e7e9"
    "nl"
  end
  language "pt-BR" do
    sha256 "d80fe6230e874d68d14b8df5309f25e5d5ff6c3e3df1def854f21e71bdb5978b"
    "pt-BR"
  end
  language "ru" do
    sha256 "fc9663f39c6099f498439f0d31c1d376a20a872a8e7b080ac197f1530f5dcd11"
    "ru"
  end
  language "uk" do
    sha256 "dd0d0e3bb3fb0910215133cab22021bf9bab6f9d78761b75833e17bd84db43f5"
    "uk"
  end
  language "zh-TW" do
    sha256 "42bac621b926fd596985f7f6627998314fc3372f0c0d8491883687932f16a863"
    "zh-TW"
  end
  language "zh" do
    sha256 "8a639045b64502a813f3f72b20737cbc9a8915be72ac87c2afc9e1eaee846526"
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
  depends_on macos: ">= :catalina"

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
