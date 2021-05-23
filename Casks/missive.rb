cask "missive" do
  version "10.0.2"
  sha256 "3555e08fcf80a04a19a4c4bc1ee36f9a2a00e26f4a65046ae111dd38ef2fd732"

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
