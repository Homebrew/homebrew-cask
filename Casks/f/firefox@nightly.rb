cask "firefox@nightly" do
  version "144.0a1,2025-08-19-21-36-18"

  language "ca" do
    sha256 "b8ed372253622b1f448e7f566efbc393bcb9bd3dd2bef7fc9ca2f2d54a935970"
    "ca"
  end
  language "cs" do
    sha256 "19a6461b6f6aaeec71127877418e4422f54fcdea569f983fa17dee00f0509a92"
    "cs"
  end
  language "de" do
    sha256 "ca706ae4cb1ce11d591ce11f3305cf91430a6aaa8aa825308b83f47f0ac3e93f"
    "de"
  end
  language "en-CA" do
    sha256 "1b1d123a21761e27686edbd26c72b99d25733f426db7527a57cd1a8bd136ecf9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7eda9cceec87ddf7976efc07185d33c8307fb3612dd13d0e14ef6f4437750558"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1d1be9f31f4b0f95e37ac3deddbf8431c2a99e589a6e6c707a1c231fd6253b5b"
    "en-US"
  end
  language "es" do
    sha256 "d577af1a48e891c2f33c4389c3d03108569a22f3af09dc3ea674988ead88ddc5"
    "es-ES"
  end
  language "fr" do
    sha256 "86370f08d268a64f016bdc787add04668a8817ae821044300b1adc1187b3e271"
    "fr"
  end
  language "it" do
    sha256 "411b782efd6c0c48250928545d24ab3c6c9cbff6ec1401b75982771c4059739c"
    "it"
  end
  language "ja" do
    sha256 "332fb84bbc6a556353ec23b45b436e47da6463ec48974bb0abcb811e23b1c1cf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8d86e2b56a3c8654545a33f90f1bd4517547b56c82934c3039077b45e05a4905"
    "ko"
  end
  language "nl" do
    sha256 "2c66939924ceecc450b57f36dd855aece71ae4cb62b5c380869eaad915f48802"
    "nl"
  end
  language "pt-BR" do
    sha256 "aa29c400281f26dd77a78a32b3341b4749c99efb1499d19a7388e700a7336f82"
    "pt-BR"
  end
  language "ru" do
    sha256 "2a8c6d2a8edfbfd5f58804bf34a1bc7f177c7fab68ef25f446fad8f276ebc917"
    "ru"
  end
  language "uk" do
    sha256 "32c27636622e4009afa507baeac4a352dcc2eeda391cf29043ed74515c24ee7f"
    "uk"
  end
  language "zh-TW" do
    sha256 "36049fc18bf9e097ffe5fc70de1449da29f2f3070b0c3f530f6d13babe22cf70"
    "zh-TW"
  end
  language "zh" do
    sha256 "457ac4f414fc7ac225d6eb243c228d86096d7fa2d7dc8c4ab2819be2ad4d1132"
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
