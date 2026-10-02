cask "thunderbird@daily" do
  version "159.0a1,2026-10-02-10-50-20"

  language "cs" do
    sha256 "84cb32f7393e2285c4ab8c86da2feefe5e4873391831165d0b3aac8a81d6ffa0"
    "cs"
  end
  language "de" do
    sha256 "e0c774e966730e561ee5302bc2f66635c9002ec0f05ae04db7e412ff67ea6abc"
    "de"
  end
  language "en-GB" do
    sha256 "48c6fd8d1fbba5b7bbc6dc225bcdf3c387040d2da6a0f7612fffc6f6000fa904"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ef8f7af074eef557b08c5110b3abfe33f0f0cb983373c04d6236745d43096745"
    "en-US"
  end
  language "fr" do
    sha256 "4efffdfa9beef6b7f03bfc4e447d0d2df1542340154c4af121decf4b3f565046"
    "fr"
  end
  language "gl" do
    sha256 "c77e081d160b2aead52d3a7823020c2439d7380ad64dd9337ddf2e062c2615b0"
    "gl"
  end
  language "it" do
    sha256 "79236d9e60be9b8e1030c962e9b5c44e004f4efb42e80aa59e244cd713c60c84"
    "it"
  end
  language "ja" do
    sha256 "4739cf395dec412d43ff327a6749aca5b1d559c0fb8eb5882da88721cf4913df"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "07127a2d12023b83c7ae296b7e9d41f7ac1342d89c632e0b001c6bc22f59fcd2"
    "nl"
  end
  language "pl" do
    sha256 "69c975bcf30538821183850e12314dbf98a0fa433b82e33de5857908693d2159"
    "pl"
  end
  language "pt" do
    sha256 "ea0a624dd7db35809f0415484903c6cdf5a7149d04930ca5e916c665916fdbff"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0a0a8ef5e20d0ed0c4b13aefa9841f93d3332e8b175347eeb51b32f1ddf82380"
    "pt-BR"
  end
  language "ru" do
    sha256 "840a446bbe311ba0e49ae07e12b5dbe6d882757aef4fb7f678a2391e631df7f6"
    "ru"
  end
  language "uk" do
    sha256 "ca2b6c26c98946251e6b736892120fdba6730e3869a6c0a864dda6d7dc0557d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "3301eb4f2600cb95b096d321797093694a49eaea4c096ecacbf2639f9fee6fab"
    "zh-TW"
  end
  language "zh" do
    sha256 "d9a20e85373f489648e80a2e4f400806139b626eec72ea5c3bae80bddc3ff2bf"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Daily.app"

  uninstall quit: "org.mozilla.thunderbird-daily"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
