cask "firefox@developer-edition" do
  version "141.0b1"

  language "ca" do
    sha256 "1a71a81e795f809ca6d6aec872e2adde81abbe7c933058574ce5b0f616555a8c"
    "ca"
  end
  language "cs" do
    sha256 "c389c7b89b345e042e24430ba9db96e9c8933d4c1321932dac53abfee844f2b3"
    "cs"
  end
  language "de" do
    sha256 "b0932df1d06694342a5c96d55db3d5169f12fa20bc007789edb1b40535506742"
    "de"
  end
  language "en-CA" do
    sha256 "fb65da79f821389ae7a058610bb5bfa6767fbab75c6e72a1fc08c0ecdfcac6fe"
    "en-CA"
  end
  language "en-GB" do
    sha256 "10e953b9f522ee81a79e8056b73d11463a8f670b9fa5660c5ae4cb0983a40ce3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "25ed728ef97c8df3ff85326f92762eee5e8b782e2f110975fe73320a1986bb6e"
    "en-US"
  end
  language "es" do
    sha256 "41652b1b577cd7a5dc7319230dac7059f7456984ae62fdaaf92155033c747b80"
    "es-ES"
  end
  language "fr" do
    sha256 "a3d3b33b004e36bdde18752a845e4188dbecb63f14f8cc678e9d79b26c1a425c"
    "fr"
  end
  language "it" do
    sha256 "9198297ad1fd75a8148901c3d98d76adc9482cbd82224bc638801dc19c40dceb"
    "it"
  end
  language "ja" do
    sha256 "8633cf0d6efeb71c3cd56c826ec9b3b330fb4d3ec94c95fe9d47f0f6e27044a5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9d2a33f7a475be7420c2382194487006b3e98017f369d7be307290d06daac9fe"
    "ko"
  end
  language "nl" do
    sha256 "7e5e75473cc9addd0ab5691631d19cab554e3df57dc08c475c94ff177e4377ad"
    "nl"
  end
  language "pt-BR" do
    sha256 "bdcdb2c80fde4421dbf65a417e783c14397527af3f66d76b2d9595f1cddab6f4"
    "pt-BR"
  end
  language "ru" do
    sha256 "d72fd028356551c4aa99eb03223916fa72f31f6e7bf4a0ce7e1e9cecee9778db"
    "ru"
  end
  language "uk" do
    sha256 "1eaabce712769c5a6c231e10cd9d8e84b29ba1370a73c52521af758e357ed143"
    "uk"
  end
  language "zh-TW" do
    sha256 "fba10fcce0b91ba7e0ce62b1a9fee5677dbbfae75a6bf677811d3d5354511e53"
    "zh-TW"
  end
  language "zh" do
    sha256 "f9a5adf960a92a4761e64f18bd0457b121ba403a90803096fb9b223eb163efa5"
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
