cask "firefox@nightly" do
  version "142.0a1,2025-06-30-21-46-56"

  language "ca" do
    sha256 "a01d5fcf7bd77004157a2a50aaddf5cb9936c59f12e8d6cc7c865bf014dcacae"
    "ca"
  end
  language "cs" do
    sha256 "dbf75f2911f3c91b090c5a0ffd8fef9ec5c3debbe59ad9609cef3bfda3e8a449"
    "cs"
  end
  language "de" do
    sha256 "b2118cbcd5c78b2fbc62711740bbd0aa8872e790aa5b5d821c1067af75559ba8"
    "de"
  end
  language "en-CA" do
    sha256 "fefa4d7501feb814aa2ed44fcfa440952fa2ae94f1c329a2f8199573402defc7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "74a770550c9d6426740b385eae0134b82d0b6f0fab75b6b5a92c822e67d855e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f7dd9d952b109b2bb489d966f2548a18f17c783ea7060f357fd7db5660dd423e"
    "en-US"
  end
  language "es" do
    sha256 "4c41e5886178d3098b30dc24c31cd1445f6a871d78e90921ebfa4f0b4ef9b5af"
    "es-ES"
  end
  language "fr" do
    sha256 "c86efd9804805ec34b0d0c503506a3ec438bd93bc91b72e4bc52cb9bac6bd8be"
    "fr"
  end
  language "it" do
    sha256 "f14816cde477f7e6779a8a46b6ae59e15fe110aff3939d6bb7437651e1556985"
    "it"
  end
  language "ja" do
    sha256 "b9d1a2f01bfee64b707c2372205e6e4ea71fac5f6499b0814a2525df3260e546"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3b9e1eab8054eca85ca4ed890d2f87ef537ac6f08b6ec23c57cea38e5d8afdb0"
    "ko"
  end
  language "nl" do
    sha256 "3f9f8d4f490457452ec9d60f8f84dcee6949fb9e2061e631f1ae755766d7bc79"
    "nl"
  end
  language "pt-BR" do
    sha256 "c00081c87929548d103b098f57b7b9265c527d4c832d7fb3afe17562ce8abd03"
    "pt-BR"
  end
  language "ru" do
    sha256 "8b3564d1fc64d0107ef3cc98cf691b5c03bd2a53c21ac14cb80a1e0b8337a9b6"
    "ru"
  end
  language "uk" do
    sha256 "03993b84e0fbbeea1db9ae7e151993057391191b985892ebfd0709c7379396e2"
    "uk"
  end
  language "zh-TW" do
    sha256 "d0d15dfb083d014f1408ab26c4cbae9c241c36f9338086fcb236b9ce47043033"
    "zh-TW"
  end
  language "zh" do
    sha256 "007b84b76b31a4eb6b08908d5433973f8e63f1e48ea28a00c20ecc1001c61f0f"
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
