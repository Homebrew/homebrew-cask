cask "swift-quit" do
  version "1.4"
  sha256 "90b82027e10fb1692ca848282ac761c32f3120c4d85663c0c691c01cc46b01c7"

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
