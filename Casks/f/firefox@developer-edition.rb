cask "firefox@developer-edition" do
  version "136.0b9"

  language "ca" do
    sha256 "0e41514d448dc68eda82dd9eea7419db2754db86345dc01967c087514a284383"
    "ca"
  end
  language "cs" do
    sha256 "4be0f3314c007d54d110b1a84aec07f20d880da7297d3744211712b9467af249"
    "cs"
  end
  language "de" do
    sha256 "65e3bf43378e1fc21638ba3a69dcbbeaf21758f0c49b71f721811dfc4587414b"
    "de"
  end
  language "en-CA" do
    sha256 "e9dfc3df50a80d526dea04a8d0b45d3aea6630405f428a9cbb69d83ce10a9dcc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0dcab9a91d2bc3d4cca9249e62b949a2458c650db5c00251928912189355fa6a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "16589cc959c2f905b3eec6ad48ed181f1d1c1a011695e4e22cc5685d2b2f3ff0"
    "en-US"
  end
  language "es" do
    sha256 "5623065226387a77fe48cff9661e07d6ee52a3019392d6b4b5b8de544333fbb4"
    "es-ES"
  end
  language "fr" do
    sha256 "e707c60bb912313dfcc4cd8b40867f1e3540286ed934bfce665c9cdf81eb50ad"
    "fr"
  end
  language "it" do
    sha256 "04aa7368a4a37be2b87091eef967e52d41de71e040e8546af7f3b8d73f0de877"
    "it"
  end
  language "nl" do
    sha256 "6e31a37f826de763aabe6837f52fa7baea916b113fdaee56289796602ba86df3"
    "nl"
  end
  language "ja" do
    sha256 "83333068fe50fe470c3c345db34fb116258bb03db7392811b173a3a274be219a"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "400c45ffb2ad3d1584a22f7056c49b3e5dc4b115f4c8f3963131317650c19c85"
    "pt-BR"
  end
  language "ko" do
    sha256 "13449bf54e858951eb1e9fe2aaf8e30382a1c37b644823a470954888e0d7d253"
    "ko"
  end
  language "ru" do
    sha256 "2ba7c6330267f81710907aad17400fd2691ff5a0b89a26dcb64a8ebc9983b358"
    "ru"
  end
  language "uk" do
    sha256 "d9b9ae4f5a16f57b1b0f7c7ef59a24fb8aa73c421821ab6c2e97698dbdc781f9"
    "uk"
  end
  language "zh-TW" do
    sha256 "c535135024fca8f89ddc9852eae1984b0ccae1ef3f6d76dbfb895a698cdb5ccd"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae0705d91eb4d3afd853cb880f897f71768982cdd0460a4e91a47921f7361745"
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
  depends_on macos: ">= :catalina"

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
