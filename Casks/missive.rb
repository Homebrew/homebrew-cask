cask "missive" do
  version "10.29.1"
  sha256 "17d233e90f29b4afcea980ede7d3a3669fa8b4010282997ee865fa3fc0e18a4f"

  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg",
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
