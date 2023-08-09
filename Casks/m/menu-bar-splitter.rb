cask "menu-bar-splitter" do
  version "2.0.1"
  sha256 "3a48c97cb3594933c5b2f97b0e31373a45847b8aefec7aeceaf7f0ea350b789e"

  url "https://github.com/jwhamilton99/menu-bar-splitter/releases/download/#{version}/menu-bar-splitter.zip"
  name "Menu Bar Splitter"
  desc "Utility that adds dividers to your menu bar"
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
