cask "better-window-manager" do
  version "1.14.15"
  sha256 "e6d0745aa969b793d78dd157f4447401ea79f56b03686735a2eb4e39b6321335"

  url "https://gngrwzrd.com/BetterWindowManager-#{version}.zip"
  appcast "https://www.gngrwzrd.com/betterwindowmanager-appcast.xml"
  name "Better Window Manager"
  homepage "https://www.gngrwzrd.com/better-window-manager/"

  depends_on macos: ">= :yosemite"

  app "Better Window Manager.app"
end
