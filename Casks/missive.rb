cask "missive" do
  version "9.56.0"
  sha256 "30e2b25ed8b46a00337116ad202b260e7d6e35a05b3b5b439eedca03519ef08d"

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
