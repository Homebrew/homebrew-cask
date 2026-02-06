cask "firefox@nightly" do
  version "149.0a1,2026-02-06-08-45-30"

  language "ca" do
    sha256 "1b466eb0e033aa141a072cb00ccd546da7f7774aa3f5aff4e60c2f865a79470d"
    "ca"
  end
  language "cs" do
    sha256 "0fd4880ab78a6bb51e86bdfd34d314939fded31a3ad8720bc7894c38b19369fe"
    "cs"
  end
  language "de" do
    sha256 "5a1efd26f9d7294d999bb51d07e41c8470b3a69b6ab86920ad3acd78a2efdf5c"
    "de"
  end
  language "en-CA" do
    sha256 "a4ca5df68e0c87fde3d2d2b915d0b63615c5c8ef0d269a3a07930ce06e2af7cc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f352d64f7256205cddb198a42128f27c8eac49c2c0b34846f693476044922eb7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "29a8056e785e82ba14b36ec05c0273602c7b06f8b1faa54af4d2eb7a890dacb7"
    "en-US"
  end
  language "es" do
    sha256 "7501b4cf369341e45be3ffa148af6a375b6d063dd588bebc94a1c51b842b0db0"
    "es-ES"
  end
  language "fr" do
    sha256 "f46095cf82b875f77f1372b21d0f5a054c5c04a69f64664198fd66608772549d"
    "fr"
  end
  language "it" do
    sha256 "6a675a33e0e0de8f620ea9106b018b4ed5e213b0202938dab0298d7dae2a4b96"
    "it"
  end
  language "ja" do
    sha256 "544e524769704e58d9f594a9bdfe9eeae076bc1f1e77ea7e47179f1292900251"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "450214619b882a01f3dd0f85b5136f1ecf9d83f67f63b86c4566f655dfa6981a"
    "ko"
  end
  language "nl" do
    sha256 "6369e95c22a6695745e1e8d10ac8a4741af34f10a11258df55cc56cf7b1c363c"
    "nl"
  end
  language "pt-BR" do
    sha256 "f3aee4defdeb1f70ae24a6f251bf1637dcb9d1e76d87af8ddc62ab96f92673c9"
    "pt-BR"
  end
  language "ru" do
    sha256 "3633ffb86a730bca19221a6264ec007fc1d8bd432f092b2b5935a50063981385"
    "ru"
  end
  language "uk" do
    sha256 "a6ff9f4afa139fa00fd850dedbb73e280972aff2211d7860ce8973051776a450"
    "uk"
  end
  language "zh-TW" do
    sha256 "d6f2c04b00e8fc1727cc03b9a1956c8d777e92b3a7ea74eaa5d92fc3dbf232d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "0277acd8054d230b45bc732932359910f648fd4337f96dce62b677b9341a00f9"
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
