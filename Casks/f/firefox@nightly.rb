cask "firefox@nightly" do
  version "157.0a1,2026-09-10-08-58-51"

  language "ca" do
    sha256 "ae3700c1485ffbd8a73216e41cfbcbf3541798b9b36c30ba03d364d1d63aa9b8"
    "ca"
  end
  language "cs" do
    sha256 "541a1ee11a2a7c5db294fe4c520df4f224b4b3e433b0d410e5146f3f41ebf4b0"
    "cs"
  end
  language "de" do
    sha256 "438688ea46f3d4952ca98ad03937994604e31739656324c3d6945920ef4d243f"
    "de"
  end
  language "en-CA" do
    sha256 "a8736fffed9dffc5a9923719ebf7e6f3b769a2194816a8ac4b5e61277b38b2c7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "68e6c4294ddaa35b99ef9575c59824ce53a018de7036409b0235111577b79378"
    "en-GB"
  end
  language "en", default: true do
    sha256 "15736a8f5346f97c6c75a0933dbd89990d622d4158bb0f97c3231c3edb5a926f"
    "en-US"
  end
  language "es" do
    sha256 "a25b34ea97fbdf726b283801a6ea70946951ae355a8871523d2ea1758e9769b9"
    "es-ES"
  end
  language "fr" do
    sha256 "3611ff79098830eec7533f9ed5790fa8a23f7f2c92e7a5acb86139a3408c9ed4"
    "fr"
  end
  language "it" do
    sha256 "23b9c06faca090561f1025eaea3ef740d2c8d8faf7a752ef9a317c75bc9c1fa3"
    "it"
  end
  language "ja" do
    sha256 "c0c6878471a1501e603a0d8c65112ac68202af8ba33cf2e8ce66ebda3456aa2e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "611827c5d587b21aac83068a01a4459b32b981206a8b82394e59dff19c33568f"
    "ko"
  end
  language "nl" do
    sha256 "f918a14aafb07854d5efb2d4727556a0d9ad7504e6cb2858a5678a6f48d2476b"
    "nl"
  end
  language "pt-BR" do
    sha256 "1fc70b38e053494b4ead7620f45b4cd2411bca315e7069253cc306ceb2a78088"
    "pt-BR"
  end
  language "ru" do
    sha256 "ef7cd742c6137fa29915d5eaef5694ac2f02451e882b6f987b190db7630dce84"
    "ru"
  end
  language "uk" do
    sha256 "241eca71221fb36e91a4174f175f4b0d2f3596c5ab01d36ebb175934fa31fe8d"
    "uk"
  end
  language "zh-TW" do
    sha256 "79df9f18044e91b74cd7f8b13eab51dc5c88f01b92fa82c32813432ed5bb6183"
    "zh-TW"
  end
  language "zh" do
    sha256 "783a4c82d55884082cc270db575fb96376e395b68777177ff1ca8f4021781396"
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
