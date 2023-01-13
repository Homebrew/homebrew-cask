cask "missive" do
  version "10.39.0"
  sha256 "17f32be95ea61a5ff3cc5a886465b23d85f77c57add322c8d0d56933ac7f5214"

  url "https://d1weoh55n7oehu.cloudfront.net/stable/Missive-#{version}.dmg",
      verified: "d1weoh55n7oehu.cloudfront.net/"
  name "Missive"
  desc "Team inbox and chat tool"
  homepage "https://missiveapp.com/"

  livecheck do
    url "https://missiveapp.com/update/stable/latest-mac.yml"
    strategy :electron_builder
  end

  app "Missive.app"

  zap trash: [
    "~/Library/Application Support/Missive",
    "~/Library/Logs/Missive",
    "~/Library/Preferences/com.missiveapp.osx.plist",
    "~/Library/Saved Application State/com.missiveapp.osx.savedState",
  ]
end
