cask "thunderbird@beta" do
  version "159.0b5"

  language "cs" do
    sha256 "94da6c49321a56a76a51280886f4c3e3187c29e806cd64774b4f6d79112bdb6f"
    "cs"
  end
  language "de" do
    sha256 "34ee46467d2ed4f31128581c9008b85b3d31d466e4faf798aea5c5038f400943"
    "de"
  end
  language "en-GB" do
    sha256 "3ea18feaa780e4e89ee561f348f2783b6a3a1ec5b94ffafdec6028feb04e61f4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bf0b641f9edb7b36056163dec3a5dc2cc0767a0bdafba1ac6441f605f781d061"
    "en-US"
  end
  language "fr" do
    sha256 "407cf7d5cc0a23d10381023efe5bef9f8ea359d4a959666e2c0754adb530a202"
    "fr"
  end
  language "gl" do
    sha256 "bc83ade6e5bbd5ccee453c443424faf3425a5a3615c29ae212328d3376bb09cb"
    "gl"
  end
  language "it" do
    sha256 "72ac35ff25d79d7b080b74f3b5a10f80c7d77f68a618aa3f386a7d995ee2c156"
    "it"
  end
  language "ja" do
    sha256 "819dd664fa9d0ecbbecf43db2ac63d5106b9dc9f15e2643c4c592d71ae5929a5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b54346dd5c4b81c444a958d9c2a31984567ed4763725a5e9bc3fdbbc69211f30"
    "nl"
  end
  language "pl" do
    sha256 "b5835eb8493486d7da29203d59fc9a588c5ad3781d6018605bfdf1175efd5abd"
    "pl"
  end
  language "pt" do
    sha256 "1464c6d99339b16c51908ec0d488af017990df1d961bdf522d32963da6a7af41"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7182d6131c5ddaae198fda83953557a466394e20249e5b12f113be3033920b77"
    "pt-BR"
  end
  language "ru" do
    sha256 "117c897e1a9c3b294959c5b308c44cbff897af06b0350df80cc47394ac75452c"
    "ru"
  end
  language "uk" do
    sha256 "1d249afe33cc5f75370cabf3fa15a8c8ff0c1b699c48500fa025d371e9ef4d7a"
    "uk"
  end
  language "zh-TW" do
    sha256 "f325d66b909ea14787b982534737bf66613bd9f9728542ddf5a84f0560b39d3a"
    "zh-TW"
  end
  language "zh" do
    sha256 "d61945a93789ac8e1c6f85420d77e01f521613b3119b7e091b8ec33d6127d68e"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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
  depends_on :macos

  # Sometimes different languages can serve the latest beta version as Thunderbird Daily.app
  rename "Thunderbird*.app", "Thunderbird Beta.app"

  app "Thunderbird Beta.app"

  uninstall quit: "org.mozilla.thunderbirdbeta"

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
