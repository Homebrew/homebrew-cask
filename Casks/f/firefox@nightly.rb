cask "firefox@nightly" do
  version "155.0a1,2026-07-28-09-52-22"

  language "ca" do
    sha256 "9b019d0ffb70f98e217d2e5858b9efd3c236d8880713629e434e6ccf2a481953"
    "ca"
  end
  language "cs" do
    sha256 "44021ca1b971f0734f00a43559f24457c4250e4390417ebadf0d992239044e49"
    "cs"
  end
  language "de" do
    sha256 "76b5ad01b7e15d1a574bc05f1bb5f13fa8ae10b2c023eb01e06f75bbb78ef605"
    "de"
  end
  language "en-CA" do
    sha256 "f24882d535d5a0c0dbb349ae4df783666febfc3d3f2f01c949f45826b35ac34a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f8f982ebfc3531912e63470d5052a8cfdef1bb1bbc9486ef0317cd588ba28048"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b3fb26354a4c6d5d68bda9f24d782599a821c280c14d4f2e7657e697d95c7cd9"
    "en-US"
  end
  language "es" do
    sha256 "beda00954e41d29bd0d2512f1b6b1c0fd0d1e61e904586c8044e420860abdea6"
    "es-ES"
  end
  language "fr" do
    sha256 "43a48b32a6517b435889da31a1859506d9412d0cabdccfce9de8ad262e021bcb"
    "fr"
  end
  language "it" do
    sha256 "978f367b5534738a42d007231c6aa8b3dc69d26b336bec8d01cc5d72a180a084"
    "it"
  end
  language "ja" do
    sha256 "9dc6991693fa73701fb7bea3d33e147bdc23dedcd82038acbd1919b5b71f0ad3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d366086d08cb051f2754bd893f78b96db3ed015dfced3465c6cc3b1f84bfc639"
    "ko"
  end
  language "nl" do
    sha256 "53e1fc2bfbd72ecb817d76bb9b9679c9b2e73f6ae6df4d30188f54d8f7d1b80f"
    "nl"
  end
  language "pt-BR" do
    sha256 "d0923db63567fa15356175761ecb01b569225180078be1703a5406b1c6ab29ea"
    "pt-BR"
  end
  language "ru" do
    sha256 "46db109512d73395013d17a87265dc8deb2998356946accb3c21f748892a32aa"
    "ru"
  end
  language "uk" do
    sha256 "38cc9ab2249b01699412a871672102ffed4e34f594f3d490a56d518b21af226b"
    "uk"
  end
  language "zh-TW" do
    sha256 "cdc165a716380c8f291ada1ac9ced95719fe20f73947e59193ecdca26cbd1888"
    "zh-TW"
  end
  language "zh" do
    sha256 "35e99999a46a03d449f4f3a6284627d2b6a5b2d527119ad6bb584b0aa89e85d1"
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
