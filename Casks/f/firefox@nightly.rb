cask "firefox@nightly" do
  version "144.0a1,2025-08-28-21-03-58"

  language "ca" do
    sha256 "f1a0cda85c520a50f80d16bd4ce4cfaf97329684200517e1aa14d337f5a768c4"
    "ca"
  end
  language "cs" do
    sha256 "2bbbe9bf9398bdfb5919f08482c2d4b47da0a7f235b74c3f69abb8f7de9fa122"
    "cs"
  end
  language "de" do
    sha256 "f773ab12d5fd9b657315cd75b61855073fc6b7f31cc747beae852cd084ab6c38"
    "de"
  end
  language "en-CA" do
    sha256 "31b98f600f4fb9b0356d748af30b1e126400a608b98e516193b33478b696ead4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "01196c17ae9ef0bf6375a4a33b66fd3bb09ec1d92a3df24a1ba156bd573e2752"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f5ad1863501f1a4d8a12415713c38014f3be57a5eef04ba1c12a152a48e7f73e"
    "en-US"
  end
  language "es" do
    sha256 "3fea681cac27dafcf6f7d54872f738304ec5e3611eabbc1092f6f01ba8858181"
    "es-ES"
  end
  language "fr" do
    sha256 "390267d2d51176dcb789721b049292e723a01f888521422438c4dca09c6fd41b"
    "fr"
  end
  language "it" do
    sha256 "784bcdd4d27f12f727f1ab736a8affb007434765e3c7f073697e7f074fa97e8d"
    "it"
  end
  language "ja" do
    sha256 "659e20592df72f6e56fb6dc5f831c2818b99ce31529ba5f2479ca473b100f13b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "70d38f47f829e01cf2b304fa797da722d636fb519d1ae2869cc5d3b33fc2dc1d"
    "ko"
  end
  language "nl" do
    sha256 "4ca42183412d6bb2a61f30a827a5a5ebf62aa9b2275875e8c85109384501e835"
    "nl"
  end
  language "pt-BR" do
    sha256 "83c8bc4deb76e84453a94f9b4755ce43c3110f5f83216f5d382e470dc29d1b0c"
    "pt-BR"
  end
  language "ru" do
    sha256 "bba0db52511a02a78a694e2e4c1fa9814757f68e83b40b82d9cca87ac064d5b4"
    "ru"
  end
  language "uk" do
    sha256 "039e260f8df8e28bdfb793d9a41f7b27db8eb6fd3fc9de6d38b1530406b25187"
    "uk"
  end
  language "zh-TW" do
    sha256 "c398279b7b4e8cb22daa0443179984cbd9e61167f3e442775ecfe156e02c98a1"
    "zh-TW"
  end
  language "zh" do
    sha256 "17991c9f7fe8d55fa4bf05958ae92ad200d9fddd90d81c5e196f068986839e2e"
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
