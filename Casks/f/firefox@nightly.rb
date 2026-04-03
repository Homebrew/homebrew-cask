cask "firefox@nightly" do
  version "151.0a1,2026-04-02-21-30-57"

  language "ca" do
    sha256 "5aa8a76da8bd5be33f287bf7b579783448dd463eb545f4804788cfe97db67e99"
    "ca"
  end
  language "cs" do
    sha256 "95a46d7c37a5b783b17b4d4375e00eb242be057cb4898a985fba46bb4d3d048d"
    "cs"
  end
  language "de" do
    sha256 "7fff5780b8f97015584e855f37b01d6b868e767b103d53472e252065d4f3be50"
    "de"
  end
  language "en-CA" do
    sha256 "5b8f761261ff52d454be087c6f0411d3f465aa12e510f3166cd74172cef964d4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d1beb67d1cd30ee1ffb3f3be0152307886346272fb12d87cc37bfe94b6d2354a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bb1f6c8b2ac3433a30a205df8e64ddcb0aedaf26e6bc628b5313a1ad2a5e09f1"
    "en-US"
  end
  language "es" do
    sha256 "ae167de34dea9595af3402a302620c3b0c2d776039645f4008e55d70b2a69807"
    "es-ES"
  end
  language "fr" do
    sha256 "987f3c21e571485bc98340d50b6d83fa30e2b40e4591e04d3f17931e2f7b3372"
    "fr"
  end
  language "it" do
    sha256 "54b74f89e185e63e5f27976fe43adaa44f28c6ca689d2d2828140afed691b9a1"
    "it"
  end
  language "ja" do
    sha256 "f2c75c071dbe2de1d260f0772e584c9a1d8bed6b77e001a8312ad36a9c6de1a3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9a0e3eaebfd5b95ff8e85549448642cd0de0a3b43cd5faf20cecca1458381218"
    "ko"
  end
  language "nl" do
    sha256 "90266bacf44cc8e4cea917c4813a32314c85efab2a8054dfdb12e281f7d5f611"
    "nl"
  end
  language "pt-BR" do
    sha256 "515fbce2f7811cca6ee2da647ab084576fc29572a28548d8ffd8df813fcf05a9"
    "pt-BR"
  end
  language "ru" do
    sha256 "c910711fbf84fbe6a85af0190f26049f9d551993d3582c3080933ab392f14465"
    "ru"
  end
  language "uk" do
    sha256 "78f473a2be23b63182c135cad4484352f7c5f367d18a47167a87897e4a7b283d"
    "uk"
  end
  language "zh-TW" do
    sha256 "4428c8e6057aac031a555f86c1335e2e7c134b24071a73755a3e354a7da09aca"
    "zh-TW"
  end
  language "zh" do
    sha256 "b440fba3809155839acd64546cf2e81f8dede0fb1e3e62f62aa1ba579f635da5"
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
