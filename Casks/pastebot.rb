cask "pastebot" do
  version "2.3.3"
  sha256 "10b68def60189611c84997e6cba5b74382e213fd16a0a23235d960adcb39ab97"

  # tapbots.net/ was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/Pastebot.dmg"
  name "Pastebot"
  desc "Workflow application to improve productivity"
  homepage "https://tapbots.com/pastebot/"

  depends_on macos: ">= :high_sierra"

  app "Pastebot.app"

  zap delete: [
    "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac",
    "~/Library/Preferences/com.tapbots.Pastebot#{version.major}Mac.plist",
  ]
end
