cask "firefox@nightly" do
  version "155.0a1,2026-07-29-09-51-31"

  language "ca" do
    sha256 "3ecaca68596c385f5780d622a786208054bec34f635431a2546a057519b57691"
    "ca"
  end
  language "cs" do
    sha256 "177ea4fb2ede5b02f6040960af5d87e5b5b6167cdf94a234fecd6aced9090c3d"
    "cs"
  end
  language "de" do
    sha256 "afd341cd7d97800925dc44fb7dc3221c7dadfdf19b28060a42bae42dd5c7a881"
    "de"
  end
  language "en-CA" do
    sha256 "2469f9369816845cf6155a1766f0dc771616e9cbfe56d842a51099d21fa15d35"
    "en-CA"
  end
  language "en-GB" do
    sha256 "09a558d8e8104371b6bafda4339d1bf4f707081cfd33dfae48e6b0fc657f56d4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "decfcae80af83e5146b0e304f2583c042ba503d539f431b6ef1d35798b2a2e5c"
    "en-US"
  end
  language "es" do
    sha256 "3c696ff86245973f835cce1b0d7dbb06cdaa6933ef50d8953bb573d238fb2579"
    "es-ES"
  end
  language "fr" do
    sha256 "3fba777b2b79729fe93f9beff80780b79d370ca7578e34e2935e75b2605392d4"
    "fr"
  end
  language "it" do
    sha256 "337849a8755ba341df88a0b1abd3ada953df6181aebb50a700c2b06d656fd2e5"
    "it"
  end
  language "ja" do
    sha256 "741924f953dc068925c9f2f699dcb3b6be3df6a189f124bde51761d9bde1b079"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1e4f10ead1e5ce387c4f0938e0660ed68ea8fe2efc5718c79fb23a913e1ba942"
    "ko"
  end
  language "nl" do
    sha256 "417d4d8c8e408c7e7a368da9528e122b558a623ebbf7e2ebe602cbbede41b50d"
    "nl"
  end
  language "pt-BR" do
    sha256 "672ac0fdf544fa3a529ff420b653d32b4e9646a58cb45ca629d86da43ad0c754"
    "pt-BR"
  end
  language "ru" do
    sha256 "71516a2d763599e08c92a033d4ad636a887b6d5f8f1d5c2a73d8dd5460539337"
    "ru"
  end
  language "uk" do
    sha256 "29fa64bbf91c78c6931f26ac1d70519fb2f6cd759887ba904eff2189717ce68b"
    "uk"
  end
  language "zh-TW" do
    sha256 "e5ac247ece77b02520e56afb538ae0beedc3d12edc93ab4520d9acc1a409e46e"
    "zh-TW"
  end
  language "zh" do
    sha256 "5c627f713a175a4b202959449081ec2a1ba6c1a9d092460590a282a42241a8c7"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
