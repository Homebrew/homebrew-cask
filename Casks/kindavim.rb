cask "kindavim" do
  version "5.0.0"
  sha256 :no_check

  url "https://kindavim.app/releases/kindaVim.zip"
  name "kindaVim"
  desc "Use Vim in input fields and non input fields"
  homepage "https://kindavim.app/"

  livecheck do
    url "https://kindavim.app/releases/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "kindaVim.app"

  zap trash: [
    "~/Library/Application Scripts/mo.com.sleeplessmind.kindaVim",
    "~/Library/Application Scripts/mo.com.sleeplessmind.kindaVim-LaunchAtLoginHelper",
    "~/Library/Application Support/kindaVim",
    "~/Library/Caches/mo.com.sleeplessmind.kindaVim",
    "~/Library/Containers/mo.com.sleeplessmind.kindaVim",
    "~/Library/Containers/mo.com.sleeplessmind.kindaVim-LaunchAtLoginHelper",
    "~/Library/Preferences/mo.com.sleeplessmind.kindaVim.plist",
    "~/Library/Saved Application State/mo.com.sleeplessmind.kindaVim.savedState",
  ]
end
