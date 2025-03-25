cask "thunderbird@beta" do
  version "137.0b3"

  language "cs" do
    sha256 "6d3e5fea4fd15f9df7e8715e022a7426d1cb51d9f4560b85b2891fb1e1b64a68"
    "cs"
  end
  language "de" do
    sha256 "614e1d6c9cad1223787b587ae2d52ce5f59a2628db36a84c2fdcd1ecc5e8f6e3"
    "de"
  end
  language "en-GB" do
    sha256 "b74208a731a2f323cdba057c9b2ac8c5e40498b1a01577242fb4b3a9492b6deb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "975d6269247bc9494bf51fed85d0b2911bdcb28708dc6e1365eab1a8d8834fe1"
    "en-US"
  end
  language "fr" do
    sha256 "2f0ac186ccdc1bd2d47297eaa1ac58dec37bdb25be0e06219db9343cc3079adf"
    "fr"
  end
  language "gl" do
    sha256 "942342101890121fa80dd47662763102452eeada7b7626dc4408ebf7106f584c"
    "gl"
  end
  language "it" do
    sha256 "f4e85a41ebd5fda751aa4b37caf778a5dc14f9e16f3dd145e164dfb8e6a7fea9"
    "it"
  end
  language "ja" do
    sha256 "5323db7b637f82cb3b8dba5e2469b905c55b767a8cb613cf714383efa64cdea5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ca2ecd3425bdfbd71ac6960daacbacba1d28565cdc7c2c458680a8b6af163ea4"
    "nl"
  end
  language "pl" do
    sha256 "964e2038cf2bfb094114f2b3663087e10f21fe8acfa3f2464a585c797811fb08"
    "pl"
  end
  language "pt" do
    sha256 "f7be7e61f213a3cb20f09c0be61df0981e553f3bcff6809d3ca9f717fec9cc9a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3b937a641f3ade35d14b2e1787a92fcfc37c58318631717e9a8d990943b56f07"
    "pt-BR"
  end
  language "ru" do
    sha256 "50a9a86d5188c7a26ac35d70fb70107f066e8fb68d75111b8cda3b5b096179e3"
    "ru"
  end
  language "uk" do
    sha256 "c151dad8289b3ba1ec088ee3e8e6f02961bd8cc201fcc2431b4862593a0e515a"
    "uk"
  end
  language "zh-TW" do
    sha256 "95ee321362617bbc049db9a0d10699541776e23df6728ef2af883ed7e6e3e628"
    "zh-TW"
  end
  language "zh" do
    sha256 "68a4960ca9054068934045182166c7ba3b6505ce4f21f8eb161d55b18ac8a7bc"
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
  depends_on macos: ">= :catalina"

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
