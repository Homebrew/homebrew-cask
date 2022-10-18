cask "pastebot" do
  version "2.4.2"
  sha256 "a2e11e6b4766275fb35ca9985a00a98bf096da3ebe1b0d05ba1455964e0609be"

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
