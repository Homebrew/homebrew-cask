cask "thunderbird@beta" do
  version "150.0b4"

  language "cs" do
    sha256 "a53dc47f1a65aa49294a723771194e34d084ed6d61da0f6693e9e9e3d6a1b32f"
    "cs"
  end
  language "de" do
    sha256 "77df7490dfad32819282998b520acf9ea8e7ee7003a615ea79ed1bc84317fa19"
    "de"
  end
  language "en-GB" do
    sha256 "9b3748eaab652bda0709d683129f911e06cd436da4cfa8fecfed349d4f0de598"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e46d1803bfa7a3e94117a229fa8046a51b08470932c813270f0470559c3781f"
    "en-US"
  end
  language "fr" do
    sha256 "338ff5f6ccc75a6bd2a2cb2c2fad9735608b37350ec53b1cd258e315ab15b5f0"
    "fr"
  end
  language "gl" do
    sha256 "7d0e6ce4315b5709649c23310cdaba08c0579b1522fd09480e9b2900c6ff8bcf"
    "gl"
  end
  language "it" do
    sha256 "8f184c8f33ce772607eb78aa96a7f18af9f070314ac9fc1c2cab6b32090bf877"
    "it"
  end
  language "ja" do
    sha256 "a3b48341dc8c77c23a8f989ca6cdd01443a378920f0fc18da21aec882d6afc4d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9fcb12cfeed619a48ecfc37fa1fe22ecc0dba325e478ede57916983fcaed67eb"
    "nl"
  end
  language "pl" do
    sha256 "371a1751c28d80f9af15ea875b25c0a8e4e62ca495cca26dd976a9d29560754d"
    "pl"
  end
  language "pt" do
    sha256 "da124c3e7071bb2a1773d92740cc32b8c928894c02ffb02e1f56f65f4a7d3b31"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "53a72138de2804f2b2b1b67bfae0b3ca94f800393539d0007af86cda063054dd"
    "pt-BR"
  end
  language "ru" do
    sha256 "33fb930c2ffac7a4a0060923452c48f26de2a5751cee574d4cffa5692a318dab"
    "ru"
  end
  language "uk" do
    sha256 "1e1248cbf7d852f7e8bc2a7c8700946a4da35e58ef339dfc126a16679d06ebd5"
    "uk"
  end
  language "zh-TW" do
    sha256 "a9fe9b4ff46d849e9a0483011ede2f25e3476902f91bf6e00940904e61c81ede"
    "zh-TW"
  end
  language "zh" do
    sha256 "b3a75043c9a63b077bdbf240fd82fc591777b6c1157af5c92c51cf36a485ab7f"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
