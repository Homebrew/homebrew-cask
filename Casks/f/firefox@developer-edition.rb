cask "firefox@developer-edition" do
  version "148.0b6"

  language "ca" do
    sha256 "9f0b34e0b19559bf11e8eb87a4ca3223dba4df6feaf4a5af421db89850bb51e6"
    "ca"
  end
  language "cs" do
    sha256 "964f813b6f234f5344c2e3eba0bb2a8d46e80972050a5abe09025358f6d2ee0c"
    "cs"
  end
  language "de" do
    sha256 "48f6615eeb9b290ea493591d005fa58947408a3f0df74896d521e280bfe0562e"
    "de"
  end
  language "en-CA" do
    sha256 "38989d0425f5d00b586895414d0c7701304c14fc825a9233faa7fb772af5353e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "968b5dd0f3942ebb18e302b9485c7137829ccaea30749c88993019d8034fb195"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7b8cd9eebd088579f49e892d9f26543b4a4b431dc644b3dc4a0666057a9e91ee"
    "en-US"
  end
  language "es" do
    sha256 "69f3fe53fb6d68951f97e3ed3c1663741f331fe9da84e4b6347869e6961dd211"
    "es-ES"
  end
  language "fr" do
    sha256 "5bc9dc25ffdcaaf5e8aff4f3c3d87b22c97b0546c584cb820d899fc02e2f1ada"
    "fr"
  end
  language "it" do
    sha256 "03278c7f6a9df03ef78e39980dd6fc673d9430f066f1a1dfa59526c6b92d3cdf"
    "it"
  end
  language "ja" do
    sha256 "576e2e2d8f178c8314e117a03e5b385d03d1cb805c28549d3c76603d4708a2c0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3579400ae8557bc786c237d902e799cd3c0c253ad75e6ba9b67df0fe8ef8c0c7"
    "ko"
  end
  language "nl" do
    sha256 "e433ddb616d0e7ec2f1d16414177c1d616ce558bfbf2b9ab6ba100d6551b3310"
    "nl"
  end
  language "pt-BR" do
    sha256 "3ccf6b2bdf65a680c7c9cc571629936b31b42f294783395ce82d775e1e6f8280"
    "pt-BR"
  end
  language "ru" do
    sha256 "f1d72499afa1666f22b649b6a57fea9efd5a7a271c5ba7263cb05ab138be42fa"
    "ru"
  end
  language "uk" do
    sha256 "c058f83ad14a8595a5122a0c11ae3d1ddd00a8a854371fd92f16467983368f54"
    "uk"
  end
  language "zh-TW" do
    sha256 "ea6075ff6f427fa34947eac3a0bbb438e5c5eebe1ce27b66580e86cdc25fb44d"
    "zh-TW"
  end
  language "zh" do
    sha256 "df00614f0d493ad0343e244ee366efa42589a2b360769f9181bb590dea9804ff"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true

  app "Firefox Developer Edition.app"

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
