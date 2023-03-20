cask "swift-quit" do
  version "1.5"
  sha256 "d8ea2cd7fe36fd83253e4654c029ea17239a80ed34ca2faab67b65cea0383594"

  url "https://github.com/onebadidea/swiftquit/releases/download/v#{version}/Swift.Quit.zip",
      verified: "github.com/onebadidea/swiftquit/"
  name "Swift Quit"
  desc "Enable Windows-like program quitting when all windows are closed"
  homepage "https://swiftquit.com/"

  depends_on macos: ">= :big_sur"

  app "Swift Quit.app"

  uninstall quit: "onebadidea.Swift-Quit"

  zap trash: "~/Library/Preferences/onebadidea.Swift-Quit.plist"
end
