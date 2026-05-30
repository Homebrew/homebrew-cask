cask "firefox@nightly" do
  version "153.0a1,2026-05-29-20-02-49"

  language "ca" do
    sha256 "bd9cf7dc61f3c23bc3b59aeac8cc3ed7d9829e452c4d56b863f772b6e88b87fc"
    "ca"
  end
  language "cs" do
    sha256 "922b3d8397ce2139566bda3a0637e1d46043f8ab97c180d1a8b88b194a063591"
    "cs"
  end
  language "de" do
    sha256 "713c404cd30b1739fe22157d26b5afa23adb95443f50852f7ba53a15205564e3"
    "de"
  end
  language "en-CA" do
    sha256 "d7aeabf386b1c1925161d43abb697d0bb5f5ba4a073c8b4d226d40d1ddd3af87"
    "en-CA"
  end
  language "en-GB" do
    sha256 "04d2a8f0d41d34825396168deec0ea988fc3fd5080e448ec51ca4ff097ab2765"
    "en-GB"
  end
  language "en", default: true do
    sha256 "baec0c1ed867c149fcc4896fb3fcf3d13a76a7f59709bf570c9a8a98f3000900"
    "en-US"
  end
  language "es" do
    sha256 "d2988cf1422d07ee794d76fd1d6a5fd70e4e277a16679143dcab7caf3c4c14d2"
    "es-ES"
  end
  language "fr" do
    sha256 "e0ba4f73e881dc9821db3033a0b3b3c74bd15c1c63f34214c098edc51203d114"
    "fr"
  end
  language "it" do
    sha256 "01b34375020b7200cfb38ec4dc9c7094a5c63802e4e82a673f7bf1b51eb1bcf6"
    "it"
  end
  language "ja" do
    sha256 "2c3178e714f0ff8a00ff8b34db8b684ff660c69cce979d517e3c78e814b0ed66"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a3a404290a37e1b7f15c8f99807784699567df88f206cf41be98d9f54aa05c82"
    "ko"
  end
  language "nl" do
    sha256 "faa2e476499cd8dc7cded1820bedaecfe2d213ff0982d17de91fb4378972f9cf"
    "nl"
  end
  language "pt-BR" do
    sha256 "b5637dba4b0a22db2e5b7365950224d57c3a299182b369728f7afef804596604"
    "pt-BR"
  end
  language "ru" do
    sha256 "6990cd4d94d3718bb2139fb73ca32926a22355f1b976c630a36acd0940188808"
    "ru"
  end
  language "uk" do
    sha256 "5465adac795ce56a3e55db5dd701edaf46c4b4e1e3fa970fee473991f45d52b2"
    "uk"
  end
  language "zh-TW" do
    sha256 "9c8de7ddd46eccf31231fddee8846aa8859da0c0d17e83eb6d40643638d42c40"
    "zh-TW"
  end
  language "zh" do
    sha256 "71f2d7915d4f6807fb57dada298f7b9851c6230efd3f695498d7e77489fde5c8"
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
