cask "missive" do
  version "10.55.2"
  sha256 "ae9eb4d8b2bbf3306dcbc109c4259bac82352d597462f727f2633ed7e5a8599f"

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
