cask "firefox@nightly" do
  version "154.0a1,2026-06-29-21-48-14"

  language "ca" do
    sha256 "91c7312f5a1795032069132940420800b5783a650cccffac15d01384bf1a6bc4"
    "ca"
  end
  language "cs" do
    sha256 "368f284b49e9a48ec804abc184e45d10433dfb599c3b7bcefbc9f210639173fd"
    "cs"
  end
  language "de" do
    sha256 "3dff69f1868860712a583b119af8d3ae5624beb425a98d65f94745e5a351e5e5"
    "de"
  end
  language "en-CA" do
    sha256 "b9e3698eae9880b4b6019f69c49cd3381cdaa5784827eeb1fd860a1893d2f14e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e7b974513d88294d2e564d8e89d677544344f9e2019f86ddb270d17e9f453166"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ae2041373e91cb149c0dc441acd56f1f5bacd805315c0c33ff41afea928d09fc"
    "en-US"
  end
  language "es" do
    sha256 "678176768d27373dd642896403e264f8a42a9959b0105691579ea027a839497e"
    "es-ES"
  end
  language "fr" do
    sha256 "6c50203734358551e5452e721c10e823862fea33441ca693518173a3111928a7"
    "fr"
  end
  language "it" do
    sha256 "54aa46f63ee9c10decd1be56474ec2dbd6b87639f5a716df8b7ff546c771b760"
    "it"
  end
  language "ja" do
    sha256 "3f94d1bef6a44ac44a289eb947f4f01be7e8796248d8a45a0567adb31670cb55"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "68d75d7fb88aec9f3166bec7361219ceed2eb17f770f8d69892f10427191a6db"
    "ko"
  end
  language "nl" do
    sha256 "0bf468b1c539f63e364af448c7277afa10fb2b65e3ce5e442cd820676842d9eb"
    "nl"
  end
  language "pt-BR" do
    sha256 "f43927196f2c91c9219b5b0534e6cb0943d1df158922a4948bb3c32d0729509e"
    "pt-BR"
  end
  language "ru" do
    sha256 "b37171957a3f930dcd1655c34e3479f7fa475827da0aebde0665f7b5677e3406"
    "ru"
  end
  language "uk" do
    sha256 "1f0032c3cbaf7fdd0534b1617bf903e139db67d711f288ef3323f0b40b50e3fb"
    "uk"
  end
  language "zh-TW" do
    sha256 "1901fd9f6ee5390e9d2a5625d8530b7fdc27aa5c3ea7af34f09114703606a329"
    "zh-TW"
  end
  language "zh" do
    sha256 "2fe4d5ec592424ff9efc08eef1df8c6b00b03bf5bac3fc58b3f9ecda591c9b64"
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
