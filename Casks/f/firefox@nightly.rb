cask "firefox@nightly" do
  version "147.0a1,2025-11-13-16-33-20"

  language "ca" do
    sha256 "cf22a1c1a25ab0c4841968b1e14265c3611902b566a73f6405c9449c211799d7"
    "ca"
  end
  language "cs" do
    sha256 "1995fbb4c42021a803475e72c2050c6f6e3c9db86e72b87c1112ffc64c99f862"
    "cs"
  end
  language "de" do
    sha256 "4e7bcbdcfa87a846e5ad6b02daef3a2ac6a9c552284fc085d23878ac4212c486"
    "de"
  end
  language "en-CA" do
    sha256 "53e2a379279f28ae41a4c0426b1384def8e8f124f43955f36b421bf7f8de874c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "596bedfcd8d0ae6faa3ebbe89ab9cebf7b35722948d7f68bfd292b1660395827"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9fef784718cf97fab655a3e56733aef0a50cb1334735b6558f54b59c19760ede"
    "en-US"
  end
  language "es" do
    sha256 "9768ae036551027004143db40f6c7d300f54836b36e300d639f4dce0299210df"
    "es-ES"
  end
  language "fr" do
    sha256 "91773d4791a57ac8bcd9a5098103bcad1797e1c9d087c3b9c05fb11c5f75403b"
    "fr"
  end
  language "it" do
    sha256 "eb4084e7af5333f534347cf71bf86c875239da9fdb3974b46a6ec8d54d0086f7"
    "it"
  end
  language "ja" do
    sha256 "6c66156f33b905112ed26744e59e7a66e52d2d89bb7c51673a9b60cefa43b65f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2c4ceee5f37b7c477f0ae669914c724b627eb73b08bcc03d080831ad65b34e4b"
    "ko"
  end
  language "nl" do
    sha256 "5b18975e14467cc75369bc575301a0887d57f94b1918063bfea2c665989e09c8"
    "nl"
  end
  language "pt-BR" do
    sha256 "ba1e48ba747ad5056e19f0625c24a7ade8899531755fdd34f076c13f9c57c304"
    "pt-BR"
  end
  language "ru" do
    sha256 "1633cb2053f5178490d16668317d157ad4c449b3eb41e78352e5a46ece343318"
    "ru"
  end
  language "uk" do
    sha256 "3677d1023fb60282b9d50cc25152133ac4b7bbc5970cc500232385b5c0f2f242"
    "uk"
  end
  language "zh-TW" do
    sha256 "b497e84ae6e26802905d33b9dde2f10ec9439c571bdbf927a517650a12b8bf1d"
    "zh-TW"
  end
  language "zh" do
    sha256 "ead6eac2baa69f8ddecdf26f54285b7a8788e3c8f2d8f2b9cc1073a439ae64e0"
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
