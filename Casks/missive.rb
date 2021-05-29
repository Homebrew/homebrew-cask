cask "missive" do
  version "10.1.0"
  sha256 "f101ebb91472c2df4c074c165706a5c9a3a00bf944dd4b98f7ed634d8bde89e8"

  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg",
      verified: "d1weoh55n7oehu.cloudfront.net/"
  name "Missive"
  desc "Team inbox and chat tool"
  homepage "https://missiveapp.com/"

  livecheck do
    url "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  app "Missive.app"
end
