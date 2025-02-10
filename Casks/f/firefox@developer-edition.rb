cask "firefox@developer-edition" do
  version "136.0b4"

  language "ca" do
    sha256 "b87361aeb9f30c561c8d27e454648d1813f81455570e39416573a945937487b5"
    "ca"
  end
  language "cs" do
    sha256 "939a6ec9d40f366134cdc9f64f51e3b1f6b1d23570e665fa5531df3feab977aa"
    "cs"
  end
  language "de" do
    sha256 "5d35a38c1f3b4e84dd57e24d3eb6b28c13b8a5370da4c42c503184efd54d7d85"
    "de"
  end
  language "en-CA" do
    sha256 "c6585619d52b345eee19b9b5a9a21e7c76c48f0f2836271791ff76a03031810a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5bc9a42ce1a846ec64a3655ba410383e49502b6f344a486cfc80c026a6a2e1f1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e8ad9824cc40c6f655aa0ca815def20748fcf0e8363bd45f2da56d5338629c70"
    "en-US"
  end
  language "es" do
    sha256 "8063f6ea668545efbbe885e02eb9703c7b9d56381fb5a836422531c54b5ede75"
    "es-ES"
  end
  language "fr" do
    sha256 "59ceb4eeebefcb493f5582b71e1007ae5a08924b6a49bca36975cfb77dbe5b89"
    "fr"
  end
  language "it" do
    sha256 "26ca8b98cfa3880fe4cc27dfc5399529db8a9b0735a8c154d0222416a0239587"
    "it"
  end
  language "nl" do
    sha256 "35820e688611002288090cacb134de0e85222b346d389248584c65331a09150d"
    "nl"
  end
  language "ja" do
    sha256 "b7e620707a71a404ad12f09af94de5ea70f0bdd14e56cddb17970fbdfbf0bfb2"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "755b9dadb3c75ae3ca4bf42251c3d909e299330983c1b178fbe18e4489b3a2d1"
    "pt-BR"
  end
  language "ko" do
    sha256 "48c635598bad522f22967ef5bfd6b0a977e8fef9bb35fe5d1c3ea16395213be0"
    "ko"
  end
  language "ru" do
    sha256 "8cfad6740a2512b428fab3906fc198faaecd68422311a03ed64760996b4a8b9f"
    "ru"
  end
  language "uk" do
    sha256 "68fbaa8fd367366f63dcf85d9eaf2d0685dd4fe7837178d619ec54d084df6b78"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f55af3b28ffe79913eec4cb8f81d016982aae760698f263ed6a4536a19a133a"
    "zh-TW"
  end
  language "zh" do
    sha256 "d83bcccdf77c31d73480304b705ad5e057f4bde9aa8da883c51e194674c97919"
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
