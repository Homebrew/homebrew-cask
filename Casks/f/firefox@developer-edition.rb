cask "firefox@developer-edition" do
  version "134.0b9"

  language "ca" do
    sha256 "ecbde35b5d2b83bec4669e023201a6a3ec3902ebc52bc63f0f60e3ce844894d1"
    "ca"
  end
  language "cs" do
    sha256 "f22b94a52d9ec5d02bc2bbe0b353d6472e469482c056ad32563a194999b2c81f"
    "cs"
  end
  language "de" do
    sha256 "b04252e93a8b34775e9b88a9ff941825a16f8c60edc307fa884afd8c5d10e558"
    "de"
  end
  language "en-CA" do
    sha256 "38c5e8f12850d3cde1d14fe000b771537c584e0f2274cbf0fc07cabbc8e93337"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a50d843dcb8e9b36722558bfaa2d8af838bda57322bee68475e254387e821f9f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0c2db414fbdee1c878f4c0e576f697381e7bfa629e43763a3baff5364e89a3e0"
    "en-US"
  end
  language "es" do
    sha256 "25c3728dd152267c9b7421fcaea708487153f63155355eaaed5a01e45691fb99"
    "es-ES"
  end
  language "fr" do
    sha256 "2167eeea5ae0c957b9f04ca69d6ddef9da63bfa2c24f91439b189551338ca5cd"
    "fr"
  end
  language "it" do
    sha256 "598075c08d6e24e68556229f3afe0ee24cf5e1b835c61c61e220de46d69eb977"
    "it"
  end
  language "nl" do
    sha256 "a0fdcedb25e05b6ee2f3cd6ddd7be0e69712d551e29ed3a9414e4dd0b6368aa2"
    "nl"
  end
  language "ja" do
    sha256 "fb9db074edfead4685b34537b3f5502ad6bbfacf29f0ea9daedf471f1308ed7c"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "1fddf7f015d41db195eb664febed3062bfacff9b4b517fb5d5dd7aaef133dcc2"
    "pt-BR"
  end
  language "ko" do
    sha256 "a850a913a4b604cb05862cf2878b32e51710b8da94319d74087b5b5e11edfbde"
    "ko"
  end
  language "ru" do
    sha256 "b28d5a22e49e37cd1f49c406fd7d41be24eecd9bacb380d70d7914b44cd43171"
    "ru"
  end
  language "uk" do
    sha256 "abdafa1a6951193a5fa75c77eb755693fc514d9a232c2f7eb7be89fc74225d54"
    "uk"
  end
  language "zh-TW" do
    sha256 "dfcfd94904df90bdd0790c3ecdbd6d05809edf099cb1269cd5d731e256477805"
    "zh-TW"
  end
  language "zh" do
    sha256 "374c287be6779eaf5ce64a11f583ba012d736cfa15f8e380d176b40f1196d25c"
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
