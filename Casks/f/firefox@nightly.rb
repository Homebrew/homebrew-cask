cask "firefox@nightly" do
  version "144.0a1,2025-09-10-09-37-11"

  language "ca" do
    sha256 "72a11c0f1250422312a425192b2e319292b1874cc23888ddf675518d4381ccf0"
    "ca"
  end
  language "cs" do
    sha256 "aa42ad147e054468d44ca1e04735599dcf9d5d7314c785ffca64321232402ee4"
    "cs"
  end
  language "de" do
    sha256 "12fb7ce5a7f6e6fc2e7dc58db9b1cdb451a4c8a435d2a32c022ce24940392bc0"
    "de"
  end
  language "en-CA" do
    sha256 "459b4ac7d32ee85e8b89ab6463560403f9684216891d22f2572f334cd5b7f54a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "657bc88f5fb2fed122c8231687bee3ce0d3517771330661f900a5ebf4ea69ae3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b98219658f70ae151d901081b0ed36ef6ba504eafbea809fdf7165a133e95256"
    "en-US"
  end
  language "es" do
    sha256 "b322069c88c2f3542d5f311a07a5c36150ef0bfdea7f4f048b10790c242e23b5"
    "es-ES"
  end
  language "fr" do
    sha256 "d7fb67800b21ff47837e4ea12461c31357708d608e13cc07d41988a6609e914f"
    "fr"
  end
  language "it" do
    sha256 "b6922ddd21fb8fb70240f6a0f033014f9550be2a0ec07c3814bdb5e4b1d562c5"
    "it"
  end
  language "ja" do
    sha256 "0261d01f37810e3ab991a4381d5ea807c4137ac58aa30fa5218a453590ea15b8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "43e36871cb1b6fbb32edd61f3aae7a8940ab451ecb735ca66c8c2ca3c41544ff"
    "ko"
  end
  language "nl" do
    sha256 "9f307c189335adc457f2a114d7de75935207874c43b703cd8414b883aed0588a"
    "nl"
  end
  language "pt-BR" do
    sha256 "c99b8b35cdb4e25ba21191563ed0b0342c37aff3435fbd9b692f41fc7f2be011"
    "pt-BR"
  end
  language "ru" do
    sha256 "ea1f61ab7ff9446b4ddca0ff3b3c0ac68a7aca3b5e853e0ec65ebbe00d284ceb"
    "ru"
  end
  language "uk" do
    sha256 "2e8f58fd71268ef91570f9365a8ef30ad39fd655884c4b47118cd117c5c8417d"
    "uk"
  end
  language "zh-TW" do
    sha256 "86fa46c9746c73084425fd19b722a4278eac9601cd33e1ef94496fd0785016e2"
    "zh-TW"
  end
  language "zh" do
    sha256 "c05d266dab1ea73d9d752c6c42e4e1d8c8809d381c63238d1ef3e190a45a8858"
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
