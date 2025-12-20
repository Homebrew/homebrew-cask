cask "firefox@nightly" do
  version "148.0a1,2025-12-20-09-30-50"

  language "ca" do
    sha256 "0ee68e0a8445e74373e8a285173f98e4cfe276d64421f4799cf28b486104337b"
    "ca"
  end
  language "cs" do
    sha256 "f2c283b0996eddbb2bfb4f40b17b951ba57125eb5bbefeec0be5d344e1654a29"
    "cs"
  end
  language "de" do
    sha256 "41180eb028bb1feb7cbdd1ae46b63ac33cd24992756463d8c3b9c4b6434db01f"
    "de"
  end
  language "en-CA" do
    sha256 "6c9e42221c0be432da7a7855bebd4dc040fc0476297f27842620d49236a0f63b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fd71369f3282b7c4b3dec245c684e49d80c3fda9ad8c386185dcac304b64d51a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9de736adbf33049061731edc58f41cc55573ef1f9072313db917ad2e02dd2be8"
    "en-US"
  end
  language "es" do
    sha256 "152789cbf5fd9c09346ed4a17d50868f14f730599ffffd4d1bb6e774df3a040c"
    "es-ES"
  end
  language "fr" do
    sha256 "a8a015c372b419c413882f5d590437a314eaf026536d08be0f2c234a5dfd6c26"
    "fr"
  end
  language "it" do
    sha256 "90f3824a757a9b59f44ea2748cc27c4bc8f90283ab3dbed481b94dd92a34831c"
    "it"
  end
  language "ja" do
    sha256 "ec65eebd0caeb7d17b5a6aa61acb4e166665b9c4be4bd2c8d58c9f3629a286bc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3cba933a0d8694453a2e195d784d8c58ac7ce20690f1b48844bbd4e4ca0aff9e"
    "ko"
  end
  language "nl" do
    sha256 "d170cf1ed5d6305862e5ad9c156a7a638b8e1b4b387b20028d8e3d172f2d4cf0"
    "nl"
  end
  language "pt-BR" do
    sha256 "2688671625e3edc6e93eb43af3018d43013b99f3caad27c13a89a8813de0a6b1"
    "pt-BR"
  end
  language "ru" do
    sha256 "a97157519ec0e2f18e2138c57cddf3f2f1f099dfd8c4967bce2a68927888a547"
    "ru"
  end
  language "uk" do
    sha256 "166c65a88668e6ae26f06ba4fd7c0faf5b883b3b4dda890df01cecddff9879ea"
    "uk"
  end
  language "zh-TW" do
    sha256 "08fa63d15a18a439b2a60ceb80b02c1b62862acf5d218b769ab075a7f574be79"
    "zh-TW"
  end
  language "zh" do
    sha256 "90a22f2ac9d13073d257509b9292b7cb7f57bffb13d18247268b4c27809b3bc3"
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
