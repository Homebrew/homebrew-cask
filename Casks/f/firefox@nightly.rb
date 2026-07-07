cask "firefox@nightly" do
  version "154.0a1,2026-07-06-21-41-24"

  language "ca" do
    sha256 "850c0bf712fec9986f3f3622c898db2ea7a821d807c382b8c3a53e1ac22be85f"
    "ca"
  end
  language "cs" do
    sha256 "fa55179bc2017518bb4bc324379f170f0d156ab9050fad0ef82de85748f8dcf4"
    "cs"
  end
  language "de" do
    sha256 "20dbe0ffcd92d0d43c5c2d7a95b2f68948d36ca162f261c681fd8a12159f2833"
    "de"
  end
  language "en-CA" do
    sha256 "c0a662a02b2236e777838330ff4af4a748cc6b9f226612f2b70061ba1857a265"
    "en-CA"
  end
  language "en-GB" do
    sha256 "715ec3b4a3e5d1bcb1f813b3f733964806b1f943fb4a342d1c2ce8a8ea06a5cb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "602bafe5bc53437aa3c6dda89bc1eb2f7db4163a3b9f712d3683355edf98100e"
    "en-US"
  end
  language "es" do
    sha256 "1cd1aa8a18d59e38fef427b336c1c89d0db6a14ba64c81849015b80b669ca4aa"
    "es-ES"
  end
  language "fr" do
    sha256 "7458b58036b9e2f986eec3251add97156413d24a7a8be00c9dcdb788bab8fe97"
    "fr"
  end
  language "it" do
    sha256 "3cf34ee797f9cf06cf5747090d09ad07d54aa8d1590f7a16a7dcf6a88771a56d"
    "it"
  end
  language "ja" do
    sha256 "c8769a6069462efd52d65a51733e0775e32d74a567dc1e25f9021e8f1ad6bf20"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "63e1eb9aa8469e8858b16102869378cd14cf69b68fe9c7d5b28a55dd38e8a91b"
    "ko"
  end
  language "nl" do
    sha256 "1938cea6edfef3aa4780bdacd60107ce1b7a62f82a44a53bedbacc79c44aeede"
    "nl"
  end
  language "pt-BR" do
    sha256 "1f3fa086e9d270cac0d2dd841ac992f3dca20ee1c3c87cda205599ff7bf6a245"
    "pt-BR"
  end
  language "ru" do
    sha256 "31cb1f3eb70d0b239e617b6dd0b05fc8b0b7560c49e9517caa61ef24150a59a7"
    "ru"
  end
  language "uk" do
    sha256 "55b2d63267b1fa55157223c6086bd01dac2980215736f2294a8e563cb3eaa7ab"
    "uk"
  end
  language "zh-TW" do
    sha256 "e615d94db3cc3583ca714a1388b32b0bf9629aade5af4d4eb8c8087867a6ed26"
    "zh-TW"
  end
  language "zh" do
    sha256 "08152d1257dbe97274a6eb131b0685c4e3c608f0f2845d66e01716035305b186"
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
  depends_on :macos

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
