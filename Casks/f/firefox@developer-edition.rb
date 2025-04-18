cask "firefox@developer-edition" do
  version "138.0b9"

  language "ca" do
    sha256 "8c2edaa2f8de77a4b8db4b21ee863db3a11902c8660756dd0d44d0ce6abd5646"
    "ca"
  end
  language "cs" do
    sha256 "a47ec63c2d3be1716d2f63f7ba99d4c129c4fb254ee9ac49be892a9f55d5f355"
    "cs"
  end
  language "de" do
    sha256 "c7dc4e0739d38681e3e3d929a8846dd95dc232cd7d40bb9c721e1d4f5c91d747"
    "de"
  end
  language "en-CA" do
    sha256 "da249a05afd2c1fcd6b9b4d66b33d35889ece78617046ef05e8853fcc025c97b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6c53175c3f521f59934aa0042c266ddeb01ee38c5150504b9bdf3fc90c8c29c0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1928e7d43428543441066bbbcc37904ca99cff7c276f0a3250ab1e532ef91eb2"
    "en-US"
  end
  language "es" do
    sha256 "2e73e8428ff91a6a2d462bbae9b3bc13ad03a009d128612f3f46b27f7d8547d0"
    "es-ES"
  end
  language "fr" do
    sha256 "94e141b9540e7a03e26333d144ca6c62c37df6873c6a338d7518c115dfeb7710"
    "fr"
  end
  language "it" do
    sha256 "cc85c3d6dcb61aeabe3d9d3c98ce49d356dda2c65b7fdd2ff8caa816ee494efa"
    "it"
  end
  language "ja" do
    sha256 "8d47998f26d394b8538279df8c82af57c165effd1e4252e2fea8a08a47f58bfa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6b686f94ed0a477c02a05abd0c767efc3531a5ebf213b68aec1d5d2e4b36efe3"
    "ko"
  end
  language "nl" do
    sha256 "5222d8400ac660b726ebbd0ca4422b5e6c2e03092d0a41045bf6434b756abb65"
    "nl"
  end
  language "pt-BR" do
    sha256 "22f6c19233136a60097bb1fcda1e592f59461f50632c3630f5fc42fd753af9f5"
    "pt-BR"
  end
  language "ru" do
    sha256 "3a791a07a6ec029cce3a97e0d4cedff52eb373a53c0ff7199109e4a0034577dd"
    "ru"
  end
  language "uk" do
    sha256 "afbf11dbc54dc25aaa1b70a66ca936c880a9b9508a6fd5b10f3112622348054f"
    "uk"
  end
  language "zh-TW" do
    sha256 "8916e9ebce3d560e3c5bbb78d5fb1fb79c422fa1425d2e447f08febf45dfadbc"
    "zh-TW"
  end
  language "zh" do
    sha256 "d2e781ddb98ee3a7dfe92ef77b56a55b3473e8de212124a497d63f946f3487a9"
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
