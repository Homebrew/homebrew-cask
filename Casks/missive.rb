cask "missive" do
  version "10.2.3"
  sha256 "d1732a7d2e6b39eae4100a96c3d8aaa4234650008a415b5184e1e7f55a4d2615"

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
