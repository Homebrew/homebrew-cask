cask "missive" do
  version "10.47.0"
  sha256 "547c002fc8433d62ee25951b2feea97406182a947fa56b84d62552da20fe880a"

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
