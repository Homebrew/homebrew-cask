cask "firefox@developer-edition" do
  version "130.0b1"

  language "ca" do
    sha256 "8a782fe3afd0989835d3cfcb4f9202d9e5b72d32ccf23b2e6aa45c6961547a1f"
    "ca"
  end
  language "cs" do
    sha256 "bb9cd4538a765f8fac8dcf4cb74f2211217e4adf0a6f23953b918e607a9004be"
    "cs"
  end
  language "de" do
    sha256 "e7613832af61c562769857a2e333fa1e841086fe4ce1a111976097cb5ddf6212"
    "de"
  end
  language "en-CA" do
    sha256 "65a455d76541c35a611d51c3cfbf31195ed0249082600ea60abf2ebe54d29b4c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "879c59f93d12edd2bc1cf9d9ccf4ffdb1f7a51e18e8e252023b652b6246085fd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dcbf34abe689545f40dda8730153886f8aad391d04e850177200496be0b6e8af"
    "en-US"
  end
  language "es" do
    sha256 "bc915b976bb30cb0fbe6e86df5f7ab4dd6cd545925c856f850309558b74f89ee"
    "es-ES"
  end
  language "fr" do
    sha256 "b634525421afeae989a24c216d2b4a7fcdba62daa98a329fdfe46a4e47c0f255"
    "fr"
  end
  language "it" do
    sha256 "8c440198e275eefdb854cbfaa0f98ac8dedd47d764ab3c9dc1380ac79673f2e0"
    "it"
  end
  language "nl" do
    sha256 "f864b5e396689d238edcd03a03fb6c7bdbb1fa132bd2868381d730b9eb3cba3a"
    "nl"
  end
  language "ja" do
    sha256 "a8f3c9c962ac4ee0a1ccbb7b654f2fabf1aece50b540eddf23fd333c09f17ca8"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "1ced802817655a1480bdc9fe67d05263d9dfefe3828261693ab3b02ab828ff60"
    "pt-BR"
  end
  language "ko" do
    sha256 "4ce6c91607e461ccf507560130f9c340bbc768491e99a77496700f9725e95342"
    "ko"
  end
  language "ru" do
    sha256 "680ed31653d41f666aeef347d1f2023df1df9afd6d8c9a246e01d3855eee825b"
    "ru"
  end
  language "uk" do
    sha256 "10fa35fb41af3c16bddcb0f6c9320c11db782673f502a237e2f7533828aad925"
    "uk"
  end
  language "zh-TW" do
    sha256 "01dcfc07875a057d9f79005f42ff8a716ecd35c37ee3c0c8603c7230af3161d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "da7a0ddbabdfd60c4c37dfca0d298a43197541bd50fb8ce7d371cd35e7b4c8ee"
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
