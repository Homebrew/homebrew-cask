cask "firefox@nightly" do
  version "143.0a1,2025-08-01-10-31-55"

  language "ca" do
    sha256 "15a9c99699575564f8c4ec863b5be47ee808654b2beaa97ba979af27cd403364"
    "ca"
  end
  language "cs" do
    sha256 "5926450c9b15d45ce759623d8562b57a4a8a110fc00871586fa1d6ba4bdfcf13"
    "cs"
  end
  language "de" do
    sha256 "b9b81e7c1ed88f38b44a39acef5075a74341e0d2e9466f8c2f73bd397dabad30"
    "de"
  end
  language "en-CA" do
    sha256 "a12823bb81cc69fc621dd20e0a1b256fb0a96761d7a12fe5056bc193524eff9e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f7ca6ba6ec4cb1f9eb4408c4aff5beda7e5104de7950b6971c3a2a7659c7ac2f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c955322a4b157f0718a9465a1de77be83fca8f5ef0c32d9f37309fdd8c37ce1a"
    "en-US"
  end
  language "es" do
    sha256 "699d53e44421655573c9a7a8cd5a51fc8381762b6260c154f12fc3351a1a23ad"
    "es-ES"
  end
  language "fr" do
    sha256 "1f0c3cd4019b21fe01b3d997f0ca8dc39600296fdcacb0ee41e2207309aed21e"
    "fr"
  end
  language "it" do
    sha256 "8fc1e6c6387f3758e22b0048f2d85c5a77780e44ca0bcb8df6c82abff0c1895a"
    "it"
  end
  language "ja" do
    sha256 "0ea61135271f6622a02cd114e62ad9d993283a00f6e56bb37a01679fcee81265"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4cc93833e8976266de9dcc2da1631a24fab6e4c578a92961be34e7d44ae9601f"
    "ko"
  end
  language "nl" do
    sha256 "bf056fd8ed17898bd981ee23c00ad3d1ee770a5cfe0cddcb1a35ded84f05c66b"
    "nl"
  end
  language "pt-BR" do
    sha256 "ece8772a2199bdf0b43581ec2cdd0a797fc810c97601383428ef73895d1b8e50"
    "pt-BR"
  end
  language "ru" do
    sha256 "672b0d542f105743c96e759f6e6b2ddc770a5383d1b915872af5635060dc530e"
    "ru"
  end
  language "uk" do
    sha256 "6ab976190ce2340a57e091c308d5b1df4c4f788ad78424838e2141a3805e9a44"
    "uk"
  end
  language "zh-TW" do
    sha256 "90bb8060e913e728455bdd44c1cd988390571b9d183485cfcb59dab4ed2837ad"
    "zh-TW"
  end
  language "zh" do
    sha256 "745c91c999715cbca18b267a2be441c6838ef19f536825a54abd8530a50e6340"
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
