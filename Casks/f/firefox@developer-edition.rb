cask "firefox@developer-edition" do
  version "149.0b5"

  language "ca" do
    sha256 "20f7fa7e27ed822db7e4d707528d156914b819fd4c8976804e5ea11beabfc1bf"
    "ca"
  end
  language "cs" do
    sha256 "04bd5e28c8c1e598e6a5487b9acb35fbac6cfd45b36015f5074477f3bf552d60"
    "cs"
  end
  language "de" do
    sha256 "a0e7095f7b6820c1a923a12546cacc71b3b3ee07b04362550f26d6aca3284423"
    "de"
  end
  language "en-CA" do
    sha256 "6c0c9751e1a3e684925391e7e1c5ed6cbdb77bb210a5569a4a0308241b70b306"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c98109055be6aac55a1e19869f0b64dd9053d6ff088b06a53292e8e1a2d66a00"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e83f5216eabdf1b8442451ea91a26fa8790ed1c3e3b378c521c0c9996f81529d"
    "en-US"
  end
  language "es" do
    sha256 "73436aaaa9f6559aca151a5281ed481ecd1e1a6c54bbbe010f89e99f3c4f261b"
    "es-ES"
  end
  language "fr" do
    sha256 "9c7631de29100257b9a90a285024d7ad4c8d1aaaa3ed2329f541d99d184da8e4"
    "fr"
  end
  language "it" do
    sha256 "776a7b7e077b75144896de32c49fe36ab7bfeefbf39e76e412cdfa1751f41c84"
    "it"
  end
  language "ja" do
    sha256 "5d3441c9e2146ff1e7afbed7126b370a769f933d1b2f890b28a0fa4e376519fe"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "011ce3a7fd99288d900c7136de0e22d9ea9d33dd291cb0b19ac2f121d36cf562"
    "ko"
  end
  language "nl" do
    sha256 "5ac36fdca64acb81ecc5ec8daccf9296c16637cf47453c0ecd5ddb66401466e1"
    "nl"
  end
  language "pt-BR" do
    sha256 "9f1d37ebe28bceb15470cdfdece30f9fbae2ba43fcc42d8fd9cfbd42060c699f"
    "pt-BR"
  end
  language "ru" do
    sha256 "9bda1724dfba38808a6a29e369788b7bb941b918d6946f1bb08cc2ef55a1c15e"
    "ru"
  end
  language "uk" do
    sha256 "24dba8fae6dd0c745cb5e04c555e54aeb946ad969dccaf418b52e44b53204e34"
    "uk"
  end
  language "zh-TW" do
    sha256 "d6d2462888f7989aab8753f727f4482a058986f9c4efba75614efcc0a794782e"
    "zh-TW"
  end
  language "zh" do
    sha256 "28b459e13fb021959443553cc236731c739c1c10ff0afa226dcf1133a8226722"
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
