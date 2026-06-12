cask "firefox@nightly" do
  version "153.0a1,2026-06-12-09-25-24"

  language "ca" do
    sha256 "65d0665f1f6a80a896456bbc7b650d7df1a93a571c582c9d1c076fa52fe58f2e"
    "ca"
  end
  language "cs" do
    sha256 "cdc74d15c06d45462727771ffe01aaa00d7c68bf5d1f90121065c8070edcf364"
    "cs"
  end
  language "de" do
    sha256 "3aa3ca028ed30dedd330e5da8c59ad190316fe9513a232bc3be322788cc60649"
    "de"
  end
  language "en-CA" do
    sha256 "72414a872114c531ab2290290ad27178149975f98a6283f2e549101ecc7c365f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "167dc3ef611d5661848b58206df920e571891e326b0245415bd3a6dce748b010"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0788ae921ab6902e5963fb48ed5a15352ffcdfbe2858cf84ccc3455300757743"
    "en-US"
  end
  language "es" do
    sha256 "96f10cdd0c5787d6b5d701844d624356e94a2132e72dfacfe531a7c0fe813c9e"
    "es-ES"
  end
  language "fr" do
    sha256 "3a5f9c83f3bdeeeeb9e9199778e1165965978e59c85cf3d473128e8361c8f0e5"
    "fr"
  end
  language "it" do
    sha256 "430cb9239e30bba5559d81df55e3ee08cf50b76ddf1879115f030b50c46c065b"
    "it"
  end
  language "ja" do
    sha256 "ec17b8ddbefeb149f0a865b85d6e9f1aa6dcad4041663cd839e9e95667f62e64"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e691993e4288e2c849cf35ecbddeabf26855b74e52be92512e423e7bb95099f4"
    "ko"
  end
  language "nl" do
    sha256 "b29c2ac6f552e060f22db77c41170b57a18a93e8df54950388e8cb482c577ef2"
    "nl"
  end
  language "pt-BR" do
    sha256 "800a57291fd7b9866164a3251b299349ed43eef924c8d87a013130d833ec2fe8"
    "pt-BR"
  end
  language "ru" do
    sha256 "344d1d79acb94baf089c00c4885fdeb3b9bc955b90f558c3fe25b405d5be50dd"
    "ru"
  end
  language "uk" do
    sha256 "aeac7c8cc4fa1d0271f120a3e42b221389fc7d3f8c341b717fd33e2889ff60a6"
    "uk"
  end
  language "zh-TW" do
    sha256 "ecc3c491ad714f7de6ddc8d70b294db5a017eab3073230c354fc0a090b9511dd"
    "zh-TW"
  end
  language "zh" do
    sha256 "680d111ce77184ac931495c90fa770a7e028f2b9644b52eea76036d94afe0fcc"
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
