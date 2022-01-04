cask "pastebot" do
  version "2.4.1"
  sha256 "8a169360a98ee67816fca9c6bcde423de71606e3e70ec19d9bcf48ea6a75f77f"

  url "https://tapbots.net/pastebot#{version.major}/Pastebot.dmg",
      verified: "tapbots.net/"
  name "Pastebot"
  desc "Workflow application to improve productivity"
  homepage "https://tapbots.com/pastebot/"

  livecheck do
    url "https://tapbots.net/pastebot2/update.plist"
    regex(%r{<key>shortVersion</key>.*\n.*<string>(\d+(?:\.\d+)+)</string>}i)
  end

  depends_on macos: ">= :mojave"

  app "Pastebot.app"

  zap delete: [
    "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac",
    "~/Library/Preferences/com.tapbots.Pastebot#{version.major}Mac.plist",
  ]
end
