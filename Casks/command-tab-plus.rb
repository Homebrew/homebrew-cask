cask "command-tab-plus" do
  version "2.6"
  sha256 :no_check

  url "https://macplus-software.com/downloads/Command-Tab%20Plus%20#{version.major}.zip",
      verified: "macplus-software.com/downloads/"
  name "Command-Tab Plus"
  desc "Keyboard-centric application and window switcher"
  homepage "https://noteifyapp.com/command-tab-plus/"

  livecheck do
    url "https://macplus-software.com/downloads/CommandTabPlus#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Command-Tab Plus #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.sergey-gerasimenko.Command-Tab-Plus-#{version.major}",
    "~/Library/Caches/com.sergey-gerasimenko.Command-Tab-Plus-#{version.major}",
    "~/Library/Preferences/com.sergey-gerasimenko.Command-Tab-Plus-#{version.major}.plist",
  ]
end
