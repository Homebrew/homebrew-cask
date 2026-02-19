cask "firefox@nightly" do
  version "149.0a1,2026-02-18-16-30-18"

  language "ca" do
    sha256 "52fdac5900616329d4ddfd5e6d1a61ed465fbd8dc353dc69b803a0b49593c7b0"
    "ca"
  end
  language "cs" do
    sha256 "f06842c30f2d1152fb0175e633f5fd4acd86b66fbd40ab36b37e627b9e596f8a"
    "cs"
  end
  language "de" do
    sha256 "57831279b65839b59c435441230573beed51d8b98bb46d1d2aeb5583058f5717"
    "de"
  end
  language "en-CA" do
    sha256 "cd5775d70b5cdc1b8ae2f73cc47dacd7e8bff4e67493794b44b49cfa0728312d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8edec65cf2d02fc5d6bac97989fcd519db5db8f3bc9e4336bc430bba9cb2f255"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f977f0d67d745dc84624f1c14c8b578e4b97827f948bebaa666bd5ac72746ac5"
    "en-US"
  end
  language "es" do
    sha256 "f21cc85c06a6528063ad9d6ec5ef496120190b46d204160aa7956f929e567374"
    "es-ES"
  end
  language "fr" do
    sha256 "c593e1dc657988b3b1f772f1df2319d788ace83d823b623b7c8517f8bf1fea77"
    "fr"
  end
  language "it" do
    sha256 "af74ebfbd38fa996d4dd7ff7c2ce28659472e91678d43002b00a93e8977bc98c"
    "it"
  end
  language "ja" do
    sha256 "40eb3891a0c542bdb76ffb67e53dbd3e50c6cc6e88a8b4dab9d7b4e119a5dec8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "75af8a5897c9d4c6a7554691af1974185b9365c6e6353edd4e3c7d863d1c78cf"
    "ko"
  end
  language "nl" do
    sha256 "35e426fee747c41b9589a843f5397e6a896cb82aaa9f737e6bd89f4eb46286ef"
    "nl"
  end
  language "pt-BR" do
    sha256 "97b668b39df7e584f005365a30736e807c80f34edf3274bb57b3084dfd206835"
    "pt-BR"
  end
  language "ru" do
    sha256 "6cd608ada009b4632c71681aa888579eff583454367e482b5244a28ff54900c4"
    "ru"
  end
  language "uk" do
    sha256 "d3f8b267b3b54377a3beb40c499e287b4b4c690350e5ed3d1fdf928631a0383e"
    "uk"
  end
  language "zh-TW" do
    sha256 "ee02abb212e3a69c978531e64a96533bbe49aefddf7db5a5b4dcd2bf4f5ffe6c"
    "zh-TW"
  end
  language "zh" do
    sha256 "0b48e03a776be2838db9c7f98a2b89a147d036c29dd1acf1d70445f7042e8ed5"
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
