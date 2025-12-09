cask "firefox@nightly" do
  version "148.0a1,2025-12-09-09-37-53"

  language "ca" do
    sha256 "6ffe447d278f9bd90763c69300f2a0ceb1db0f72f0528c16ab07cfc8d5755d69"
    "ca"
  end
  language "cs" do
    sha256 "a05d0a5a3c9d7c28a7ad55850c24ff99c22c51bb7f4db6f5aca752829e0e0f52"
    "cs"
  end
  language "de" do
    sha256 "ae97f0c8dd54fd8518d61b35bf010736c7ab60579845fe8414d542f8ca409f08"
    "de"
  end
  language "en-CA" do
    sha256 "20640b8f541e681ec2ff24b28c1d624aa320a5771dc4163bc97d44f6942d816f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c9794c8b05a598a2fa26e1f69955e1dd8c06dedb736efa58e6a7b26059e0ad6e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "33004933e5f6e7a2a22c20ff2560286f64839df20f9f73a35db4845e2846a9ca"
    "en-US"
  end
  language "es" do
    sha256 "4bedd31e348ed7addd2d66c7a1ef4ef58556cf46616504d4357d28913c152b74"
    "es-ES"
  end
  language "fr" do
    sha256 "e696bade2e0b010f086be5a41e3b274bfddbd7c29e6a42e77733e45818c17a17"
    "fr"
  end
  language "it" do
    sha256 "07f156bb1f422c16bc5de3a8af504fbacb8122483f8fd93e67bf43a4379e665d"
    "it"
  end
  language "ja" do
    sha256 "0bcb0d3e852ee7f3fd701b642065be5aae2f0736b011df25b90c8118517a908b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d6765c1307dfdf6e5a10993c3a2d86b93b968506585f16db237155e7c0f4304a"
    "ko"
  end
  language "nl" do
    sha256 "ba489231e595247fd963e3bac7bd1c837b9e79610793a79d8657705fb5d04f3e"
    "nl"
  end
  language "pt-BR" do
    sha256 "ddf49626250e065bdd7e06dc3e96ebb65fb1e88d94e92468864ece2e4deab0ec"
    "pt-BR"
  end
  language "ru" do
    sha256 "20bab79ccf108f6ec91201dc28f4cfa9d92a44d7e56a8dece712d7e4274a596e"
    "ru"
  end
  language "uk" do
    sha256 "0333819a26db1dc50baf3bff152d3e85f03d5614e75b1590c67fe8d1a180a068"
    "uk"
  end
  language "zh-TW" do
    sha256 "9c11d1d5564cfff71680cfa9415f5d2f162f86fe655e81eb640ed03ea60e19e8"
    "zh-TW"
  end
  language "zh" do
    sha256 "5cc01a8804976d92a02929ecbd323c1decf232ef9215c682765f4325c285f6ad"
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
