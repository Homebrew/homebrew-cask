cask "missive" do
  version "10.64.0"
  sha256 "d2e519db25a04c5d9778068d994465381698da330059edcc2a77fd4d41a5da9c"

  url "https://downloads.missiveapp.com/#{version}/Missive-#{version}.dmg"
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
