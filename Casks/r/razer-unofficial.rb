cask "razer-unofficial" do
  version "0.4.10"
  sha256 "9f57f928adb31ca843dbf2047a7d6ea308eceaccb50620792535d1fcd7ec73ca"

  url "https://github.com/1kc/razer-macos/releases/download/v#{version}/Razer.macOS-#{version}-universal.dmg"
  name "Razer macOS"
  desc "Colour effects manager for Razer devices"
  homepage "https://github.com/1kc/razer-macos/"

  depends_on macos: ">= :high_sierra"

  app "Razer macOS.app"

  zap trash: [
    "~/Library/Preferences/com.electron.razer-macos.helper.Renderer.plist",
    "~/Library/Preferences/com.electron.razer-macos.plist",
    "~/Library/Saved Application State/com.electron.razer-macos.savedState",
  ]
end
