cask "firefox@nightly" do
  version "143.0a1,2025-08-15-08-45-39"

  language "ca" do
    sha256 "ce7494c7bce46be4b927059f12e857474bb8d9f509f20985e0f0d5387166aad2"
    "ca"
  end
  language "cs" do
    sha256 "dd9a4ebdff9e0ac7d44cc23cdf3eb45db525d6f35283c080b1e7366c0e51f6c4"
    "cs"
  end
  language "de" do
    sha256 "9a3f7573b4f7d0edfd70c932b37afa81ed875d1126eade5d4ee4e9a0c08bd092"
    "de"
  end
  language "en-CA" do
    sha256 "abebc83dfba4b0e4c665d78e8a7d967a35e14843a9dec672c6ecaec0c39feb13"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ff8c7bc17ac93eca83d28d320fbaf7e74fb97fa9dad5b1293513c6f8c684bf05"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3fd10d6ae7ab010145ebdf084355947dadf154d76888e5df453dcbcc27a15dd9"
    "en-US"
  end
  language "es" do
    sha256 "245da9506dd579219ff89e14310160af0fa480e7043809c3bb7f1a8cac2995d9"
    "es-ES"
  end
  language "fr" do
    sha256 "3d1422b086c72a35f627cf92bd1dee0cd8ddcc0334cbcd657295a32696240c14"
    "fr"
  end
  language "it" do
    sha256 "23f17b895a99c9b109b31ac36ceb7f15be465da31d7256f924f53798d795ba15"
    "it"
  end
  language "ja" do
    sha256 "245583b38f2ab03c51535fc27d8723349a255032d4c51d6ddb123e04a15cd32b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fd3e972db1b6e800790790367930ae6f0c614be25309831879107050d687d4b3"
    "ko"
  end
  language "nl" do
    sha256 "3f6ab9d2397d309ab4c2f684e6012668fb7a0667c51e60887b8274a528bf4919"
    "nl"
  end
  language "pt-BR" do
    sha256 "ee6f8ad92420832a8c131efa341e823f2d46662dd43e82eaae3853fb6391fadc"
    "pt-BR"
  end
  language "ru" do
    sha256 "f316a835349271a11a745203b5024c890aab711a796d6ac4658276d27015b4b3"
    "ru"
  end
  language "uk" do
    sha256 "e9c92c136ee0da5490736e7be767d6a0fe9940b2e69415ecb97b72caf21d19c7"
    "uk"
  end
  language "zh-TW" do
    sha256 "110feba5648ca54e84ff8388e30fb42b326da169b5d9ab0fe19dde252e132b06"
    "zh-TW"
  end
  language "zh" do
    sha256 "408af618203a9bb276268c1df159c38fcc0e29dc9b59b3db8c1670f7893040ab"
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
