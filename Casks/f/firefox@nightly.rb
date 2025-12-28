cask "firefox@nightly" do
  version "148.0a1,2025-12-27-21-05-10"

  language "ca" do
    sha256 "51b871e7fac5724c80b3071feee6cc52418c57e9cb2177bd4cb367314444ef1b"
    "ca"
  end
  language "cs" do
    sha256 "0cd15a9cfda6cbe0f9b56e83ce4c93665651a237e568e95112f6f05e15b70dc7"
    "cs"
  end
  language "de" do
    sha256 "28106d3210a4909263265aea27ec574572b45b3c6e69586d0c78df79fbe2c572"
    "de"
  end
  language "en-CA" do
    sha256 "3934dcf6864bf7c501cdf70269da2785a68bf6fb03e947cefd1b7298e14e8d57"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5b5b1d323f035da7813d17da27f152449d1769ba6c10d265dc9c561e39429ab8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "23c1c0f6f60d1b420032083e75aad58272817e62375f4de7aa6c2ca57a9cbf27"
    "en-US"
  end
  language "es" do
    sha256 "28141b21e4a0e187086426cd90f228b9cfd523a8758c78f171dc5e7c80c7e715"
    "es-ES"
  end
  language "fr" do
    sha256 "73cc2bbce0c7e5d112a302ea782f3ff8bca158bdf6e3257f99c631c0d776a3cf"
    "fr"
  end
  language "it" do
    sha256 "37c042163eb5e38ac23073d8943de0907aeb335786d2308661f8635646405908"
    "it"
  end
  language "ja" do
    sha256 "dd70c322ed15515dbea77a85f45a1614a4b82c0b6fc23a610d0a1c593ec4494f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2b5299ed0948235124d20cb8099ddef6f2fb80c0db155a6ed781d72a61be06f2"
    "ko"
  end
  language "nl" do
    sha256 "efe0e4c974531d3e3fe75a509ba5c239f6bef453ca9e4de6f441e2117a723864"
    "nl"
  end
  language "pt-BR" do
    sha256 "cc38c1f1c113e2d02949bf52ecb1ec7fd43c3e8371d3ceaba347c863372ecffa"
    "pt-BR"
  end
  language "ru" do
    sha256 "9869d58dc44826027f26e90a4d19e12b483cd5d446fb7a7f9335191ac9c5e0b4"
    "ru"
  end
  language "uk" do
    sha256 "48dd5bbdca0b14f15aeef473254152082e00ed1e28164af36fdb7037f4ff0543"
    "uk"
  end
  language "zh-TW" do
    sha256 "655f8a792505a64b024e29dda7e14d3128fd47f4bb91dbcfcc11d9d1b87c373a"
    "zh-TW"
  end
  language "zh" do
    sha256 "8771007d86cac8daad63f82dda5afa30b6243c8249877fab1099e430b6de196d"
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
