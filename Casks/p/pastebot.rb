cask "pastebot" do
  version "2.4.6"
  sha256 "822de3c00786e6a92f4a50104bae47ef189e19bb3db9f2932ebbea7251288535"

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
