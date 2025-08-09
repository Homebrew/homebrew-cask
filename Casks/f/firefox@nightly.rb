cask "firefox@nightly" do
  version "143.0a1,2025-08-09-09-57-29"

  language "ca" do
    sha256 "df82b509e76b03f50830025957081f0922c2451ab8663c92e0d7120dbf74fdb9"
    "ca"
  end
  language "cs" do
    sha256 "9b9aa43609f2e11d658a02972eff07e3f98b07775ca63e876322ac71400fcb7d"
    "cs"
  end
  language "de" do
    sha256 "859953d242854bf46e372f1b1d5297f93e2311d709c2c6f5632c18d5e037e745"
    "de"
  end
  language "en-CA" do
    sha256 "feffeb0dab6138a9043c2e788e585292e76c408d0c4c545b6eadfba7946d1765"
    "en-CA"
  end
  language "en-GB" do
    sha256 "384171e6a6e5e01d59807370f1bc5091d40820271bef618d8846b0140af8e991"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d5986890f4800aea8ea75e5c7c5fe35d80a31b86c6741b2c280f3e3a084ec11d"
    "en-US"
  end
  language "es" do
    sha256 "4df62c1d3f8a39be14002b26fe375dab45658a4c3c8074e965246b24c9220920"
    "es-ES"
  end
  language "fr" do
    sha256 "8a9a8d64169e5415e87e478bf97981badc89ef58dfae8c2f34f4e9e467e29e7a"
    "fr"
  end
  language "it" do
    sha256 "160d2ae060f1c78eb074a315aa4719988239d4538a7f09428802cd5317ec2587"
    "it"
  end
  language "ja" do
    sha256 "83691f547d217d8e63db6f8ac52712aa4219b282200c9b0c5a2ab2f5b6227c24"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "35e4d0ffaeb81d353ee4f5e3f2e7864205ed1bbb116b0d097187ccb3bb0f9152"
    "ko"
  end
  language "nl" do
    sha256 "b7d9dd4bef4d0a48b932a72f70ee1b98875f5a8c75746309b6ad2fd079433239"
    "nl"
  end
  language "pt-BR" do
    sha256 "848ff0abdb163c66018a9e9082dfd32b35a669bce7b6c8d737c823de6406acc9"
    "pt-BR"
  end
  language "ru" do
    sha256 "ade595379bb952413242005037fb355aa5e293e50e864cf79794d3c66f28fd3b"
    "ru"
  end
  language "uk" do
    sha256 "6abd7f291870aab82ec5fc6788e8f57f566cc7e498d7748e44d1cfd751ea5588"
    "uk"
  end
  language "zh-TW" do
    sha256 "db5269a570f97179475e2c65e06cb8ca24a05753c4ac273652d8c48d2c01f38b"
    "zh-TW"
  end
  language "zh" do
    sha256 "9bad2a8667d020c736219d6656461f94fe5ee671bc2289b0317ad6ebab23300b"
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
