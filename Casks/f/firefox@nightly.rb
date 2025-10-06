cask "firefox@nightly" do
  version "145.0a1,2025-10-06-09-57-53"

  language "ca" do
    sha256 "69f4b1a1b24946dba90c2880a950b2252878888257aa6d5f0839340aabafdee2"
    "ca"
  end
  language "cs" do
    sha256 "472f8dc4842ee694e8af32e792747014de0f84bff5d1309de453f41ab6f21ecc"
    "cs"
  end
  language "de" do
    sha256 "6f739a9c0f7f07b193c9b8095266f5205a9bfc51db2fddf200b1e9e8ab9e0570"
    "de"
  end
  language "en-CA" do
    sha256 "51214d7d8d8f0f7501d5afc32ddb46e56d4186700d5d53e2c9a3e2f89a197c95"
    "en-CA"
  end
  language "en-GB" do
    sha256 "241716612cccd470099f2aca3a1abedd61f86bc28dc1da34a1c809a04d60bfb7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5ec9e6580eef34cb1c7948c6aaf080de76bc84cfad4561512f74be68708d28c5"
    "en-US"
  end
  language "es" do
    sha256 "33493de178ce39d89403ec548d495c50f0aef4511eaf19dc962b28728c7bbdec"
    "es-ES"
  end
  language "fr" do
    sha256 "3347ca570d0f4bda38a6d618f282b8b2b23652bff752ecf28ef68e7def773e8b"
    "fr"
  end
  language "it" do
    sha256 "2e7f3df2acb0b84c4c3cc5a1a6a1a35e304c8b69378b47e52fcca23438001fe6"
    "it"
  end
  language "ja" do
    sha256 "1b6f69a7b5ba26d49c7ea70dc633e06d459105b9be8d61ea8ba29de9e6c78f5d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ee34cc1fea909197bd432a231e6d4978b747f4fa892307b730399e3f41933fd3"
    "ko"
  end
  language "nl" do
    sha256 "4c1cff246809347f8d1f3ffc9be350087ab91706ed04995b59d0bc482b5d883d"
    "nl"
  end
  language "pt-BR" do
    sha256 "97421163e39a4633b50693441c9693e186169843d4247500c87e3487815cf979"
    "pt-BR"
  end
  language "ru" do
    sha256 "dcf353f7738ec924c552a430e738b86f0f5030fd398a12f0fe1437eb1fe433c0"
    "ru"
  end
  language "uk" do
    sha256 "3a10794dbe4495c2fb6ec033989eeb93dead9ea6dc21c2daaa5d2366f5d402c8"
    "uk"
  end
  language "zh-TW" do
    sha256 "05068e76cdbf76e9aba35f14950a29b361bbfeb0f3eabb6c11e411d0b00e957c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a6ffe40b3c12dd8d236ece9d52c67e16e9e9c7e09d1d356d498c2d8bafe7fd95"
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
