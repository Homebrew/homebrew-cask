cask "firefox@nightly" do
  version "148.0a1,2026-01-01-20-55-32"

  language "ca" do
    sha256 "f23d3400c078dba36171df979c225c9f493f2cddf2ae3dce929c79879ce72b0e"
    "ca"
  end
  language "cs" do
    sha256 "320bcbbf023e016e103df64c9e8d8abb2f5a14ff1c6bd907f70225c2951bc532"
    "cs"
  end
  language "de" do
    sha256 "9a12f1cec2444ccfdecc20759a7acbfbcae3f97fa07cd361bce1c4e52485aa7b"
    "de"
  end
  language "en-CA" do
    sha256 "c58457c50ba00d8b617958e0c90ac1d9294d258fc3604da30c1f543471ec601d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c1bdc9bede734453f9e73c77715515efeaaf3b41da0426990cba297e75a72beb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c2d36a06500dba171b753810c385dec8e69b790558831d0a068d0b9a9faffbb3"
    "en-US"
  end
  language "es" do
    sha256 "67d337b79487a8771a8a2ca7f5d2734c891180e5a0cbb5a5e8111a69c9647ccc"
    "es-ES"
  end
  language "fr" do
    sha256 "372d1f5f2e25a5b9b22b4f5e067839b75c23085b621dc66400dfa57610ea01c5"
    "fr"
  end
  language "it" do
    sha256 "7d0eac08decfe6f9b5a965a37504370a0817706606398f866b2411470bd33ff3"
    "it"
  end
  language "ja" do
    sha256 "1cfde4ea7fb06e4e7394aead97677ce46553943c1c3ae31c6c7f1e41d83de943"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b22ed3b8eae42e26d6c45e11d806fe8a8fca494b16654662d7ead32853933ca6"
    "ko"
  end
  language "nl" do
    sha256 "25d20da299ae586b5dadde8bb5d5d9791aa3eff90fe6f5712192750e0c9f4666"
    "nl"
  end
  language "pt-BR" do
    sha256 "6f41dbacb85bee22f009f8a785a88dbabc1a95f9e27087d1b77dadaac136f94b"
    "pt-BR"
  end
  language "ru" do
    sha256 "5ed287cdd91bf9817c696c7beb6c67154d011e309e58ef0ecaafada8af59d9d6"
    "ru"
  end
  language "uk" do
    sha256 "af196537e789ced2fc669ae0cb3c8fd49e408cfc65f35253318e699636bcbf64"
    "uk"
  end
  language "zh-TW" do
    sha256 "f4ee0cdfa2f66af49dfece15ff7c3bf27c64af8dfca75d66911857038ee8b94b"
    "zh-TW"
  end
  language "zh" do
    sha256 "69ad0594b67826878b6a902297c2defed616dca2f69b9da84aecf357e2c4e67c"
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
