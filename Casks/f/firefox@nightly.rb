cask "firefox@nightly" do
  version "153.0a1,2026-05-26-14-37-06"

  language "ca" do
    sha256 "6eb1e1c5f4adc028b2a000f6a3b7b99c140321fa54094b6f4db849d510c131ae"
    "ca"
  end
  language "cs" do
    sha256 "560f13459c70cb4d14bfb04facd88c97852e45faad78563ac6ab777aea8b699b"
    "cs"
  end
  language "de" do
    sha256 "e4151baa15e3aef38b35dc109e96a1328069a656bb893e50264ae574b78cacbd"
    "de"
  end
  language "en-CA" do
    sha256 "14705cc88d4dec9543b20703f27ef6af541e430076b9c8a23254d18191de8bf6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7f664e3266a1fe5377c75c849c1f45ae315a74aa7a6d568030309a8365e12494"
    "en-GB"
  end
  language "en", default: true do
    sha256 "244849af5bc2bdf3467c8428410a8cdee5cf04f9fd161f239b29e703f90465b8"
    "en-US"
  end
  language "es" do
    sha256 "2a415eb6cc40b5a9dcb825d9ef301855f278bb59a614a23e43f43c2c2047b590"
    "es-ES"
  end
  language "fr" do
    sha256 "9018acee3e564e53315267ca2c1fecffccad2fc359f6436a2b16b1ce4354a5af"
    "fr"
  end
  language "it" do
    sha256 "facae26c72d80553538a2fea3b121babcb4d208d8fdb845e2f3ce86f967cde24"
    "it"
  end
  language "ja" do
    sha256 "4ef0ed73003378363701eeabb78cc57eb49ced71222ea932fa1bf35696b46a44"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dcabdc8b722269435a2075998fe730411a3dc1e4446cc9be15cf85fcc923affc"
    "ko"
  end
  language "nl" do
    sha256 "2f117bb1c56d29c00139398c2c2a8d0db96a8ade3e07822f2f615a0c4b92b3bc"
    "nl"
  end
  language "pt-BR" do
    sha256 "7a726e4b847ac880c3818f952e5b03c50c3d54fc3ff054b7adb5ad338c3fc5fe"
    "pt-BR"
  end
  language "ru" do
    sha256 "43427f0f8087007ae698adf8a9c5499da9dc211abffc309fd6f1ae7d3248da22"
    "ru"
  end
  language "uk" do
    sha256 "fc5a0cba0f6fccd7c9415a7752d654e8d2f904a64882433cbd57cb7d32d62b30"
    "uk"
  end
  language "zh-TW" do
    sha256 "8b7e088e5afc1362eb4831e1db5fbc7e79706e78d0f343743bdc390d8171cbf5"
    "zh-TW"
  end
  language "zh" do
    sha256 "8719df0c4f44072339855d388c1011be0f8e7ad1038ba1fce851394a529ddbb1"
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
