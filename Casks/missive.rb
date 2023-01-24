cask "missive" do
  version "10.40.2"
  sha256 "6ee689b303eec992f7a08ff2f5906ecee5d1ec167c18eff05b85af31bb4ae4e9"

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
