cask "firefox@nightly" do
  version "141.0a1,2025-06-06-21-34-43"

  language "ca" do
    sha256 "ed13cddf807be74bccda5d2c0e044455de81c4aa34b5dfc03d51b22b8bbeff5c"
    "ca"
  end
  language "cs" do
    sha256 "c99825c2590214aa745bb6fba24030fa2dc674d8729039830e3a93adcfed70aa"
    "cs"
  end
  language "de" do
    sha256 "1a53259956e3d18ac90c8b8118d04d9904a87e6e9148ef8d653ad4c6da45e729"
    "de"
  end
  language "en-CA" do
    sha256 "718fe97933ab0beb1c3ff652584990d491b98cba0e278abdcbecaba7b16a4b51"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0fd576a582fda4e34fdf22c21b02628f833106f247e9b7778ea4508bdbef7fe9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "abc825002362a7df27bf6ecd9d79e709c3f027b0dc1c2994b057269e2b93118b"
    "en-US"
  end
  language "es" do
    sha256 "062b0fac6fc298f42e22d7f03f155ee75ffa838ff7c4cf8cf5ac5f7e7852ada6"
    "es-ES"
  end
  language "fr" do
    sha256 "fd247b729ec9e58bd50b199c44d69be3980d9cf080988e43c7b60e46ec838519"
    "fr"
  end
  language "it" do
    sha256 "5c20acc0777af9883aaf3875c3909e20661651b6e24c8378748ba59fbaf7d053"
    "it"
  end
  language "ja" do
    sha256 "21b97ee89b6f93511c7db71d268499b6e4847d731ffd14db41a4f206423d0e17"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c0166e2ecbe6790151a4061270fbb5f5f744512d14daf3de724d2809be72f075"
    "ko"
  end
  language "nl" do
    sha256 "d92e11876ee336804cfcbabe8d5241d5ef6ad9b0b0ccc43af38e325ea11ce597"
    "nl"
  end
  language "pt-BR" do
    sha256 "0c9f563318c8c3231b3a904bab49092a2903a8bd1389812d13449241a8343811"
    "pt-BR"
  end
  language "ru" do
    sha256 "e56b78f0a59642e1e4628b93111455105c2e701291c7541eae9faef909ae5b20"
    "ru"
  end
  language "uk" do
    sha256 "fdab3f9749aa004026a951bb2e09944312b155ed5ab0e8824b17a7ad0fce5109"
    "uk"
  end
  language "zh-TW" do
    sha256 "350ef49e4cd786be47e31474642c6aee323beb0343755a3f8eb088c270684758"
    "zh-TW"
  end
  language "zh" do
    sha256 "3a8d2f043524f7572a5a06c7a0006a9804c68c690d3cdeb79c9c136d7cd3c6bd"
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
