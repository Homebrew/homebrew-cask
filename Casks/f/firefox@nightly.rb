cask "firefox@nightly" do
  version "158.0a1,2026-09-13-21-24-39"

  language "ca" do
    sha256 "b5b41768ca9e6f71d7001c080995b4d1faa4f3665c8cbe9a4867153d911a666d"
    "ca"
  end
  language "cs" do
    sha256 "3a4ffb68ea8b9de2bb9003e293b1025763a825fca9c01ddf949e4f548e0d53fd"
    "cs"
  end
  language "de" do
    sha256 "d0bdeb5625fbb93cb1b3e01db5697b3251dcc4219e80cf0b09f7d4153a2d08d5"
    "de"
  end
  language "en-CA" do
    sha256 "68428450757158280cb436cdfb1e23c8edfc608834139fb11198b12fe8215e83"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5f7b1a9bd8335642c50ce0dc1939cde1f4fb8e6e2eaf59b756f34f77c5de0358"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d4f61a9239febd9e0d08881a657042c37ac14603496d62ee37a1b4b499da2a98"
    "en-US"
  end
  language "es" do
    sha256 "9727610332583e6473620f8e5602c20d4ec2f2dafdd43c1dfe7866309c455d7f"
    "es-ES"
  end
  language "fr" do
    sha256 "c4e50f7b886f8cc575dba88d81f557370df8e304e95586b80e590a72b0ba6c55"
    "fr"
  end
  language "it" do
    sha256 "2be9e5de8fba14774def257057fdbd05eb458d932fc19427b4c4bef57b6c8f9a"
    "it"
  end
  language "ja" do
    sha256 "f522047cbf6c0ae17f147ef1d3c94ae36087fdb994a36108111fa3afd3ee158f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "05971d0bfa9e7667fd7d549fd3a2865e66c452cc8019af3f4c8f99084b31f3bd"
    "ko"
  end
  language "nl" do
    sha256 "7df5281685ed92677342fdca8d74771ca4825eb0ff5abfad4d80ec7a0d910757"
    "nl"
  end
  language "pt-BR" do
    sha256 "52f5ee1af58b054f60526b6590c29ea2c3385c8d70a6665391d14c62dadd0b48"
    "pt-BR"
  end
  language "ru" do
    sha256 "c06ec4412c8e1cb7da10398cfbec2dd6ef79c02a62afd983de88d222641c7b04"
    "ru"
  end
  language "uk" do
    sha256 "4f6b4fd97faa0c7837f3863e73fa13da923ccf1f9942e39769d99bf9bb234128"
    "uk"
  end
  language "zh-TW" do
    sha256 "01dde67060be04ce54d061591d92d94272b0588f5a1c1b2f7f63b3d98e743984"
    "zh-TW"
  end
  language "zh" do
    sha256 "d534698fc3a509b1e91c5d21df4dc0989fabd95b527bda34251c4c05b51a61fd"
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
