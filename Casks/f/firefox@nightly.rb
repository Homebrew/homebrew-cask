cask "firefox@nightly" do
  version "151.0a1,2026-04-14-08-54-55"

  language "ca" do
    sha256 "0c794f71f6896867dcbd4a9f386f1e7e0aa424569536c4007607baa3bdf5e815"
    "ca"
  end
  language "cs" do
    sha256 "8fcbfc513b18d6c7d70e817b7ad5b6731e2c90028cfc65363131f7f77e7d201e"
    "cs"
  end
  language "de" do
    sha256 "04b653d386cd9bd41226cd9450bb0cd70a386b222a44d556dc961b1e805b7dc9"
    "de"
  end
  language "en-CA" do
    sha256 "0fea65b24c3d20d6879ff34a1a7b83c72aa6862143807ba6a84478294ed01864"
    "en-CA"
  end
  language "en-GB" do
    sha256 "02202df941cd1a2564cfa52c431e57f1a64c24afa8fc25d53e12a3cf7a548562"
    "en-GB"
  end
  language "en", default: true do
    sha256 "53a6b54649dc28e1c4558b555d5571c42cea7221ef9cdf85d98330737493c066"
    "en-US"
  end
  language "es" do
    sha256 "bf0bf6105050f31835fc6a8e9e59cf0408c68a258d7f857e693791906726ed31"
    "es-ES"
  end
  language "fr" do
    sha256 "bafa2a7a545060c1a843811cd0edb21d7add74d022d7ce412a44be8b9e9c8007"
    "fr"
  end
  language "it" do
    sha256 "85ce6da010f5476dc679e60d7634137cb1b66dffaca7cd3024a73635bbd24170"
    "it"
  end
  language "ja" do
    sha256 "c88837be9623198b25a60061c2a89548dac553c02076790fb8d47c766154e061"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8b7c4c3cdd2b9039f0bd85971beb7b5c7a0d9bf2800665d1c06c1a68d67dd3fb"
    "ko"
  end
  language "nl" do
    sha256 "05ecfe55fa7348840421d9f114932050be7e71604014e10ade10d7a399107a12"
    "nl"
  end
  language "pt-BR" do
    sha256 "6ff741f1a29a25ea4721b0581aff3bf237497f5e5578c951f94bfa1b491664db"
    "pt-BR"
  end
  language "ru" do
    sha256 "ca379fe63dde493d611c00da4ae95215c2bb395d3ca9f35f982377604ab66c13"
    "ru"
  end
  language "uk" do
    sha256 "28dc6754a027d7f3a79dc1e961e5d4005863290512c06530e3afddf4bf347034"
    "uk"
  end
  language "zh-TW" do
    sha256 "e1de752f4f4bf504a23b7137a53d7c7b1c2a534a64d6b393be08c63034d07f12"
    "zh-TW"
  end
  language "zh" do
    sha256 "9b3cf4dcb0587be5cfd404d199f91d110d5c4a06d2a51b5de4a1cb1c91f050dd"
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
