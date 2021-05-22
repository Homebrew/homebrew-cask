cask "missive" do
  version "10.0.1"
  sha256 "de9ed332235e695ecabd95680dc49ed37fbc8e68238db8882297a34c98a8a239"

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
