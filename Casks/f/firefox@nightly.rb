cask "firefox@nightly" do
  version "159.0a1,2026-09-30-21-45-13"

  language "ca" do
    sha256 "6f9fade6ebfe2f48510a5a9ed00e119b27d1f706baf6c9f28d7ba6ae0bdfc6cd"
    "ca"
  end
  language "cs" do
    sha256 "5174c87cf06995abc679998944d542e47571954c67b6cd284ecd3e674c85a6d8"
    "cs"
  end
  language "de" do
    sha256 "3866b559157afb536f5a1159e39a8ace203122d3bcc59fa0d600f26d6c83c6e2"
    "de"
  end
  language "en-CA" do
    sha256 "5af7add7c304386523d8c860b98a8828e5be920cf72b40745102a9be4e574317"
    "en-CA"
  end
  language "en-GB" do
    sha256 "62f12a0139cc135e90a0ffdeda32aa713c27fe9e0ec229d6b0684a55eeb58ac7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "99dba19f022bb2ed0f71388a04edffb00ec307d6759273090f4d8995b7d7745c"
    "en-US"
  end
  language "es" do
    sha256 "0d16c423c519673a21b111316040c9a118c654019fabd321c31a8d02f7ba0a1e"
    "es-ES"
  end
  language "fr" do
    sha256 "3f8d833502746cbafaabd4a0f1bc21872b58063ae5f04eac9f5f872e0dbadd87"
    "fr"
  end
  language "it" do
    sha256 "de616a75ef80a7e39e0fb76a55feb71e16233d162ed3012e81f7ea78a58f25de"
    "it"
  end
  language "ja" do
    sha256 "3dc238702dc3c5f82c5205f4c94f44e88adf756fba9eee6bc750bc6c0f806769"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4c76996792592805d10073fa4919fe2699c355be35901f25037f7e35f8c0484a"
    "ko"
  end
  language "nl" do
    sha256 "c31fb28aedfc362128ab4693f9384f33b72f89db72b0b80af4b1e45a0b348162"
    "nl"
  end
  language "pt-BR" do
    sha256 "ec828572ed5f313d3c066bc5f0d15941b062e2d8e967e0b2df5bb6e6368fae59"
    "pt-BR"
  end
  language "ru" do
    sha256 "f22686a66238246744ac23f2ceeb039b41ad60e93539ebe0bbd165e6040a6476"
    "ru"
  end
  language "uk" do
    sha256 "4a99c8250fea8ce240da43a6efa74a3985e0b8c19bfa74d58ef8c6d72d940c13"
    "uk"
  end
  language "zh-TW" do
    sha256 "19f7ee3cfb700ef8e8a4de9c0234b832410a5f7246c8227ec893dcff901199da"
    "zh-TW"
  end
  language "zh" do
    sha256 "b1ad82732629d2cde06c5921044d94a91e5b4a8c35b6ff1c17f193906d954ac2"
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
