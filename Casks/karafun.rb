cask "karafun" do
  version "2.2.0,86"
  sha256 "ca26e741588827b17b8ae4d72d3f713ba8aa029cbddea08eb8403a9bc8151b42"

  url "https://c20.recis.io/sl/75651288c7/63683b44547cfdbafd795b67c7101da5/KaraFun_#{version.csv.first}.#{version.csv.second}.dmg",
      verified: "c20.recis.io/sl/75651288c7/63683b44547cfdbafd795b67c7101da5/"
  name "KaraFun"
  desc "Karaoke player software"
  homepage "https://www.karafun.com/"

  livecheck do
    url "https://www.karafun.fr/osx/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "KaraFun.app"

  zap trash: [
    "~/Library/Application Support/com.recisio.kfiphone",
    "~/Library/Containers/com.recisio.kfiphone",
  ]
end
