cask "firefox@nightly" do
  version "150.0a1,2026-03-08-21-38-16"

  language "ca" do
    sha256 "9fcd4d310f937b231165dd7e3f2d4135f794f1cf872d519ea0b9c40541ac3ced"
    "ca"
  end
  language "cs" do
    sha256 "c0d50219dfd9963d0933736992f07bb0e73f9516353da6a5b4186ff021c85e30"
    "cs"
  end
  language "de" do
    sha256 "ca3f244041d1b2fd8fdd27d98be3239159a868c1322530a2f141dee40a015d49"
    "de"
  end
  language "en-CA" do
    sha256 "8e56ef8063860c9302e4b5824fc9096de587876c8297f42e1c129498ce00b8fa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5e5591aec3be0c106b9a33beb2e2899b9eecd55778c5e7f0cd129e01a329d9e3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6e6735bc842942cc30a2e76daa836ad4669dcb978b55005fd53efce9624afa57"
    "en-US"
  end
  language "es" do
    sha256 "5bea5f382380527c144694c164d7b27fbe5b912cd0ed9ebfa7e65daab61c053c"
    "es-ES"
  end
  language "fr" do
    sha256 "85b4e1d71285afac9e4201479ab11b45e248503d0734755e7fe4a4f0330bac5d"
    "fr"
  end
  language "it" do
    sha256 "82368f55b83edc5fe225e081c7bfdc00933b90d51c0cbed0ebb1bd1f9572c3a0"
    "it"
  end
  language "ja" do
    sha256 "19ea8f6b2d7d85613d9e0601b92b73779aa4807a54749230ed26cef9a4e807ca"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1488490f5a849ccde401a9e1cfb250d44b85277c654cc6b82d9fff6ca19fdc0e"
    "ko"
  end
  language "nl" do
    sha256 "365ecf2e7493a3f299dc8d47ab7cd0a1a025f78ac9b6b2d37463899667d7d132"
    "nl"
  end
  language "pt-BR" do
    sha256 "c7eca19d6d5ba0b65a7b3379790052d196dae5bfd9b36db90b307a9bf85586b0"
    "pt-BR"
  end
  language "ru" do
    sha256 "07279ae87089da38f35b430b126c1c7ed576f862c55c508a3137651ed2c4fe21"
    "ru"
  end
  language "uk" do
    sha256 "51b563ddb37eb855d8b2049656210a494ffcbb2ec1ca388e15759b95cfdb103f"
    "uk"
  end
  language "zh-TW" do
    sha256 "ec057e6e92a28f0774faa87301ef5ea2146bb5a7056f8831c13604d10dc288e0"
    "zh-TW"
  end
  language "zh" do
    sha256 "4d548f9400e057273233c42b0fc0dd53d17003255b10d55cce20e217ad4b2ae6"
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
