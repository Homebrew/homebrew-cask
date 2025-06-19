cask "firefox@nightly" do
  version "141.0a1,2025-06-18-21-12-50"

  language "ca" do
    sha256 "6472eca94b2e220f669b65b27c8b730b79e9033377d2f97993657440d310758b"
    "ca"
  end
  language "cs" do
    sha256 "3f6c1d626d9f989cf5d50bce6d2453f0a9b76c6bcee06768ab08b1cd1934e0a8"
    "cs"
  end
  language "de" do
    sha256 "a5fbbab98f255a5f3176b5e1b92f8df16ce7931f660d98128a95ac0521e8e213"
    "de"
  end
  language "en-CA" do
    sha256 "4f022d39f78e93b23408a3abe71301ee4458035eefc9b03bf0a1b5462dfb8147"
    "en-CA"
  end
  language "en-GB" do
    sha256 "be5495b2036665d56e0b36df9e5f94fc3d38f4f48c9df8f94f726f34ca4399e7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a58a47266bcd63a26b9772702e8c59181faf7b894c584341f273113c6e8139b2"
    "en-US"
  end
  language "es" do
    sha256 "29322a66c7426eb41310706d7a6c5bd69b357a46b431b1151ef318ffa17e178f"
    "es-ES"
  end
  language "fr" do
    sha256 "5096d76361bc7f5859a4306db1c6e9f1a3b36c92197f898249beb89bfadfd82b"
    "fr"
  end
  language "it" do
    sha256 "95379b9d660e345409b3096bce17748c6147f009d73e57dfd528e682f3b057eb"
    "it"
  end
  language "ja" do
    sha256 "b87c67ecdccfeda3536d6b5b91f77ffc31c62ba168166f8dae650594f2e80112"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "243c5c350ba0050c1429cee9880ca0c710f75d2bf7db139fdf0a6e1ec17079fa"
    "ko"
  end
  language "nl" do
    sha256 "26fb679cbae09eec3f1f53d9d76f4f52897d7661a525fa27598b2093f54d031e"
    "nl"
  end
  language "pt-BR" do
    sha256 "297ab3bb5e5d9e10a56cfddea2f8146f76708104c5d8c772e5dec13949d86e29"
    "pt-BR"
  end
  language "ru" do
    sha256 "ffc517fac672149cb404f844c87fb37fdd5e20c6e4c43b2ce529fe52d7cad85b"
    "ru"
  end
  language "uk" do
    sha256 "c548dd4306d5658e365fe5f88449464a3963061ed82ba09f26372c12caf3fc3d"
    "uk"
  end
  language "zh-TW" do
    sha256 "b2adc3218744f085edcba8d083b1768683712a47fd18ebc1ce3192b4e4802929"
    "zh-TW"
  end
  language "zh" do
    sha256 "4609370b6337f923cf9716eaafeb1f61f39754dbd94e9f3f8334e5315dba65e6"
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
