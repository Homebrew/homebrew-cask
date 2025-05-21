cask "firefox@nightly" do
  version "140.0a1,2025-05-21-09-26-31"

  language "ca" do
    sha256 "a0cc0cea3fe7de9469539570516a86349210fbf41ab77f3ffecbf647aaf2efd5"
    "ca"
  end
  language "cs" do
    sha256 "b3fcb356dc20b83c4e046cd5244bac91e7f61dc4faa1ea08cbcf3ddf5936a74f"
    "cs"
  end
  language "de" do
    sha256 "1202dae63312e23d8c049bd95472b24e41c28a93eab5b893c9b2f7e4a859f3ea"
    "de"
  end
  language "en-CA" do
    sha256 "ca9839d338924d39e8d625e2ff7726b034976c2ace9638eb055a9378364ecf59"
    "en-CA"
  end
  language "en-GB" do
    sha256 "164065f92f3f6631037b3bc367e0620ea30e8b09bbd2c1ca2c0c5a1a16a133a1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "db8e4eb0dcacabc4884d9e925ec295516a1342c4bd987bad7c3b317379c7433c"
    "en-US"
  end
  language "es" do
    sha256 "0bcf870bdf855a4602a3f877211cdb7034a3c31fff38c6f3ed21e37a52c6883e"
    "es-ES"
  end
  language "fr" do
    sha256 "99f68bcad402b54598c79ed0c6549c8cd846eb28f7a3b5c2e024f4aba35d5948"
    "fr"
  end
  language "it" do
    sha256 "e35a38939b73742b9359642130d3897c843d2589f3fe0ea8635b08904e762eb4"
    "it"
  end
  language "ja" do
    sha256 "2942ad6cb69966fa44dd5d66e8b5f459097cf26f78f472b454384b9654bba840"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "caf978ce5434b61787f3d0ceed0b23482adad48216d4de2672945f40c554913d"
    "ko"
  end
  language "nl" do
    sha256 "c8653b1ca32b4a97682a49281cd83cd6a12ca1a2d4abd71a1a6f5082ed207891"
    "nl"
  end
  language "pt-BR" do
    sha256 "2b8ae781a7b5e8b65f50b00a682c34aa1475c053eaa687f3891a032584ef08c2"
    "pt-BR"
  end
  language "ru" do
    sha256 "133865a4cfc7b1e65870b0d3663a62385f36eb15799f9f754f1943a4cf1978c8"
    "ru"
  end
  language "uk" do
    sha256 "c92f82f290494da29d89b0706439c2db41d0b75bcb526ff58402891fcf3e0a5f"
    "uk"
  end
  language "zh-TW" do
    sha256 "2139c10eed7e28682863b04567f4369bfb15af1fd2aede2bb05dca721c0dd30b"
    "zh-TW"
  end
  language "zh" do
    sha256 "dbccd5547468d7371a9de4ce2830472c63e5670bf8b79c26b672976edddf87d6"
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
