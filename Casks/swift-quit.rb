cask "swift-quit" do
  version "1.3"
  sha256 "4809143dc46da3b4f968eb58f354250a821afff4611e8c807717bd039c8013e7"

  url "https://github.com/onebadidea/swiftquit/releases/download/v#{version}/Swift.Quit.zip"
  name "Swift Quit"
  desc "Enable Windows-like program quitting when all windows are closed"
  homepage "https://github.com/onebadidea/swiftquit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Swift Quit.app"

  uninstall quit: "onebadidea.Swift-Quit"

  zap trash: [
    "~/Library/Preferences/onebadidea.Swift-Quit.plist",
  ]
end
