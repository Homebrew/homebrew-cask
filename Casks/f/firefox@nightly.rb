cask "firefox@nightly" do
  version "154.0a1,2026-07-07-21-10-43"

  language "ca" do
    sha256 "a5e0dcf68533375d57ffd81d468420a79c2152aceb31e036f2eff50064549ba6"
    "ca"
  end
  language "cs" do
    sha256 "d8e29a56883ffdda022a29624a07f929c0e626af2d16bfdd9df2a865fd2245f2"
    "cs"
  end
  language "de" do
    sha256 "e4d9c618f8e9d0c2f9a73159624349148a5795867128331bc4e5441e34b08ca3"
    "de"
  end
  language "en-CA" do
    sha256 "79aaa7c6fd51bfdcfea780df422605afaad88c98b506277c8a3007bafc461e65"
    "en-CA"
  end
  language "en-GB" do
    sha256 "71ad002861fb939644536b56a1279340d92ead5f27e9a66df34a01669f709ff1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "21d253884795639b89916c61c782c332481b4561ae37e20ccc53b1d45ec51b38"
    "en-US"
  end
  language "es" do
    sha256 "5b5dcbea0180f956c0f37dce169809d955f63c34c27e35b25ef62e666e7792a1"
    "es-ES"
  end
  language "fr" do
    sha256 "64074fd11e62974f4bf280ccd7b60f10ec7f33e9dea0e90e05e7d8979ca1eee7"
    "fr"
  end
  language "it" do
    sha256 "408c274c16d73ff0cf38488e783497c8cab52e2d4e3cce6e63440ec0205f5370"
    "it"
  end
  language "ja" do
    sha256 "7e5225209be5570d5964ded6c123f1b60946cb90dad107ac44528f5a918a5c1e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7b515babebe996e51082ea689af43efd10613c7d91ec211238ab1053326fac0a"
    "ko"
  end
  language "nl" do
    sha256 "fb6001455861b72f97c859d95cf5dc5c4bc183ba6dbb27b30c78c9dbd7e6747b"
    "nl"
  end
  language "pt-BR" do
    sha256 "f24795b207c6284ed6ec2151bdf4d6ab747e11637e504f84eb3423f4cb3815e7"
    "pt-BR"
  end
  language "ru" do
    sha256 "7f97ba731cebe376fd6918b8db70479f27adc564958e307a6a8dcd3e18baf289"
    "ru"
  end
  language "uk" do
    sha256 "7aa9fe7740503c2776f7282648fbc6646e06a414a4020d6ec31dbb5462c27e94"
    "uk"
  end
  language "zh-TW" do
    sha256 "2fe331e9073a31dceb0179546772b778801961b07d972335f61395d5b7e807c1"
    "zh-TW"
  end
  language "zh" do
    sha256 "1bd8a8f2cd7f72e6fb76b4d3b3c304ea3d085ae28e0aefeb78dc8b90f0be9b79"
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
