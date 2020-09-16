cask "reveal" do
  version "26"
  sha256 "9cf292d91163030a10dc0da73ebf7d9b1e736b849aeb12c8617a09e38ef81a5e"

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast "https://updates.devmate.com/com.ittybittyapps.Reveal2.xml"
  name "Reveal"
  desc "Runtime view debugger"
  homepage "https://revealapp.com/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Reveal.app"

  zap trash: [
    "~/Library/Application Support/Reveal",
    "~/Library/Caches/com.ittybittyapps.Reveal2",
    "~/Library/Logs/com.ittybittyapps.Reveal2",
    "~/Library/Preferences/com.ittybittyapps.Reveal2.plist",
    "~/Library/Saved Application State/com.ittybittyapps.Reveal2.savedState",
    "/Users/Shared/Reveal",
  ]
end
