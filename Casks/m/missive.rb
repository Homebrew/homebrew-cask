cask "missive" do
  version "11.9.0"
  sha256 "28b3e107f21b5a8e946b10d8fdc2b3ed7a9870a83cccadc93c37f007283b59ce"

  url "https://downloads.missiveapp.com/#{version}/Missive-#{version}.dmg"
  name "Missive"
  desc "Team inbox and chat tool"
  homepage "https://missiveapp.com/"

  livecheck do
    url "https://missiveapp.com/update/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Missive.app"

  zap trash: [
    "~/Library/Application Support/Missive",
    "~/Library/Logs/Missive",
    "~/Library/Preferences/com.missiveapp.osx.plist",
    "~/Library/Saved Application State/com.missiveapp.osx.savedState",
  ]
end
