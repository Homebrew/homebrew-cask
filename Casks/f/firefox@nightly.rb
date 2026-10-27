cask "firefox@nightly" do
  version "161.0a1,2026-10-26-21-04-43"

  language "ca" do
    sha256 "7ad7f7a0f1452e9a28333209c7e8080bf91bf184a50f2b108b255e757d7d80d7"
    "ca"
  end
  language "cs" do
    sha256 "e94ddd494f076b7045aae76d2249fe986ffa54240c8b3c757723b724c712cb3e"
    "cs"
  end
  language "de" do
    sha256 "b4577468dc99f9449c2d4fb8a116e6d779798f4cecc39d411777dc545e379681"
    "de"
  end
  language "en-CA" do
    sha256 "ab4033961b655846e6141c7200aebb8f8fa7db960eeb6d7cdabec57a2fe88355"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0459b9a58d4d09e54cce3d9275c34a263e3b3858273a0ab6e4ead46928745e5f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4dffbcfe22d247465f1f5576b683e03dcdeae8644f034582c35e77f17553caf1"
    "en-US"
  end
  language "es" do
    sha256 "7f08e6eee7ad063add417bbdc14a73e1389237904d8cf04f9f29bc101d8344ab"
    "es-ES"
  end
  language "fr" do
    sha256 "5066f9849f5240de95a6e78577e9e1cd082060b526509bac297c24a59b5249e2"
    "fr"
  end
  language "it" do
    sha256 "26bd52eb94cd2abd27ca03ef27c8cda9cc1a604b879aead746f5803892ea3108"
    "it"
  end
  language "ja" do
    sha256 "d95304867d00a6209133e6928446e483b70d9feabcb4a38429a59feb88c09fee"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cf06db6e0a3aa91fe93cabe0ea06a69f9e74817d91bdaa1979d284e3eb31168c"
    "ko"
  end
  language "nl" do
    sha256 "027b8f4f2e28957c571609c072d2a930763f2466985b797d492efe3f3915bfb5"
    "nl"
  end
  language "pt-BR" do
    sha256 "56ef38e3eaae5851bcc28556b2ccba14ee5e266239df8f16b01420ea3e3fba54"
    "pt-BR"
  end
  language "ru" do
    sha256 "ebdf232102e494e2f0ff20f8bd8e84ac7196e6c68330199c95e0ff6d3925277e"
    "ru"
  end
  language "uk" do
    sha256 "e5f07715458e84aacf99626d3a684d6d3e18e8e3f69874f81ae2492af4948f32"
    "uk"
  end
  language "zh-TW" do
    sha256 "b13f45a433c4da6fef9979a0ea0fe50cc4ea7c5f5a6646204e71c0ef1577d43a"
    "zh-TW"
  end
  language "zh" do
    sha256 "b000d26ca7ad20458bad18385ee95504f21ee3494c89f655e97389c8a09a1205"
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
