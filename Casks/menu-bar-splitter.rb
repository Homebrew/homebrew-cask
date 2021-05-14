cask "menu-bar-splitter" do
  version "2.0"
  sha256 "4f1db97404fe48eaef14b8fd05c938a6ca9e6c6cd546730e25e85b709ed8fa8a"

  url "https://github.com/jwhamilton99/menu-bar-splitter/releases/download/#{version}/menu-bar-splitter-v#{version}.zip"
  name "Menu Bar Splitter"
  desc "Utility for keeping menu bar organized"
  homepage "https://github.com/jwhamilton99/menu-bar-splitter"

  depends_on macos: ">= :catalina"

  app "Menu Bar Splitter.app"

  zap trash: [
    "~/Library/Application Scripts/justinhamilton.Menu-Bar-Splitter",
    "~/Library/Application Scripts/justinhamilton.Menu-Bar-Splitter-AutoLaunch",
    "~/Library/Containers/justinhamilton.Menu-Bar-Splitter",
    "~/Library/Containers/justinhamilton.Menu-Bar-Splitter-AutoLaunch",
  ]
end
