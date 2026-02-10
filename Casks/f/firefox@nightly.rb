cask "firefox@nightly" do
  version "149.0a1,2026-02-10-09-42-34"

  language "ca" do
    sha256 "f5ea75f8f71078106c790fccc4506286b770d3e315d763a98bab29218c7be1a3"
    "ca"
  end
  language "cs" do
    sha256 "208999ede3e0814245116a3eb0a5ee35b68f064f851814eea5942f4878a3b804"
    "cs"
  end
  language "de" do
    sha256 "c9531ff906b49b969007ec7c59eafd57447e1bf8de2500f5384edbdb3f55c247"
    "de"
  end
  language "en-CA" do
    sha256 "0958f7c1d3189d925fbe74e64ee6971dc2d37ceb005539e3e84ca141adcce45a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "907f630ec8b3bedd98103f1512c4ea8f6a3e160cec5ba73bd3307478c06e16dc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b176aaa2a86373f3a39832dd371b0c0740e7da02f0a54a33683e37bd23879494"
    "en-US"
  end
  language "es" do
    sha256 "51276d88fde69e46f618060f343d457a1f86b3fbfd670eb95761b672bb941942"
    "es-ES"
  end
  language "fr" do
    sha256 "10f4870c3b538ef00681de9fca925292c8e82d27016b43311da4c2e258b405ff"
    "fr"
  end
  language "it" do
    sha256 "da32e85a0efde5e435ae9898c4a63b17352b6e5b4be58497a4c95023919187ff"
    "it"
  end
  language "ja" do
    sha256 "eaf3f39df423df4f094fd887128fa5032b4eb383673e0161c72489eaa9a158b7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "56264a590d4c15f9208f5b50ab8081515a67f598b8891c69d7c383ba4695e961"
    "ko"
  end
  language "nl" do
    sha256 "09bc8e0310327758896475aaf88232c0d24b62fd273aafb5f94a3d421c24af50"
    "nl"
  end
  language "pt-BR" do
    sha256 "a0ef363d0a508e89d2789692233177c2e369e9f97fc0f860a3642db89d6e2351"
    "pt-BR"
  end
  language "ru" do
    sha256 "b3a426d62e9c010c3ba892e575988f98909a39d0d6c14669df22c3c24012cfea"
    "ru"
  end
  language "uk" do
    sha256 "4722349ad42e086757967d9d833ce52d3f15871e3652ec64c8f3ee80560ef501"
    "uk"
  end
  language "zh-TW" do
    sha256 "a69b6046d870890ebc25172f2abfe96bc53dc518e6732d05f153af230748ea0e"
    "zh-TW"
  end
  language "zh" do
    sha256 "7d72acbe5e5ce7c6183d01029c58c7045a8a0cea3c1ca1524587ddd82fd492dd"
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
