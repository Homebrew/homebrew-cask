cask "swift-quit" do
  version "1.0"
  sha256 :no_check

  url "https://swiftquit.com/downloads/Swift%20Quit.zip"
  name "Swift Quit"
  desc "Quit apps when closing the last window"
  homepage "https://swiftquit.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :big_sur"

  app "Swift Quit.app"

  zap trash: "~/Library/Preferences/onebadidea.Swift-Quit.plist"
end
