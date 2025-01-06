cask "remotify" do
  version "1.0.1"
  sha256 "244480027c103a2030a666f5c14dbd231bd0a2ab162ee88cc87653010b12ffa7"

  url "https://github.com/haithngn/remotify/releases/download/v#{version}/Remotify.tar.gz"
  name "Remotify"
  desc "Ultimate Push Notification Debugging Tools"
  homepage "https://github.com/haithngn/remotify"

  app "Remotify.app"

  zap trash: "~/Library/Preferences/dev.hainguyen.remotify.plist"
end
