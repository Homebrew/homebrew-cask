cask "pastebot" do
  version "2.4.4"
  sha256 "1199b722eb2bd88b7d53a5b1305abcdeeede93d5f2ef3c99c68df00bede47c6d"

  url "https://tapbots.net/pastebot#{version.major}/Pastebot.dmg",
      verified: "tapbots.net/"
  name "Pastebot"
  desc "Workflow application to improve productivity"
  homepage "https://tapbots.com/pastebot/"

  livecheck do
    url "https://tapbots.net/pastebot#{version.major}/update.plist"
    regex(%r{<key>shortVersion</key>.*\n.*<string>(\d+(?:\.\d+)+)</string>}i)
  end

  depends_on macos: ">= :mojave"

  app "Pastebot.app"

  zap delete: [
    "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac",
    "~/Library/Preferences/com.tapbots.Pastebot#{version.major}Mac.plist",
  ]
end
