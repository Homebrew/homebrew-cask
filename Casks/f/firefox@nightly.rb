cask "firefox@nightly" do
  version "140.0a1,2025-05-02-09-44-30"

  language "ca" do
    sha256 "a0499a7b86ef0fab1e570d734d178cbd624be0f4862c704111c25ca575158e52"
    "ca"
  end
  language "cs" do
    sha256 "4db8ebb5d1a75c611e787aff55baa18a9f01a0f6e82c7fec27985933d86dd1a5"
    "cs"
  end
  language "de" do
    sha256 "88f252ef4c87089f326c1c7ade69daf46c33e0e9200ed3e65af419705fb7ea11"
    "de"
  end
  language "en-CA" do
    sha256 "d5f9b8844f1011b15afecace8a8e323ec93ef0ed90b62294b8034bd67a732c0c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2848e0e8a036c917d69609d9b3c8c8b674661ae4e6894361c4acdae3a8c12567"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9ee9be20a2da1f6cd1c0f0034834a9734aa9d14864fd1b021928df71b672f14f"
    "en-US"
  end
  language "es" do
    sha256 "a92e2dc7afab0ea3b51910ea0253ebd09716a718314e7288c4297a244e33b158"
    "es-ES"
  end
  language "fr" do
    sha256 "c93716768a23857519f2a19308f37873659aa1f9001db0ebf3375514c6a4de5a"
    "fr"
  end
  language "it" do
    sha256 "e76f5eaaaeddc806405adccaa488970d800eff77dcd64f0304f58cde5729434e"
    "it"
  end
  language "ja" do
    sha256 "d3500c369e2671f97e99534663afd057ebabc9563396cf76271a50f2581bb926"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8099eee1c0f860829a9310b019e08821ea2f3bc1da7b7a7014571d33df5394c5"
    "ko"
  end
  language "nl" do
    sha256 "9d273fc3190178fc75e6af7b15115c7a3d4990cd4f28fb464c0f1862a08a44ee"
    "nl"
  end
  language "pt-BR" do
    sha256 "e22eeee546a151e78a4255c9d614e9643e20bca27fd0ade8047d63ba14005433"
    "pt-BR"
  end
  language "ru" do
    sha256 "dc232aa3ddd6f0e297e190870352bb5756ec153b53c3ffa61fcd53e41a3b8e21"
    "ru"
  end
  language "uk" do
    sha256 "d41942aefb452022c596d32cbc988bc17e8eccca22cdd3d20dd58a25b4298fbe"
    "uk"
  end
  language "zh-TW" do
    sha256 "2c08d5afe932121ef088b2c590acc861f0a022ce0fcbc2261a689884e3802b90"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd29cbe0718415d3528b54e24505784361bbca8257101d0e82d2d7452acfe9a5"
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
