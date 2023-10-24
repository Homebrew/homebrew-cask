cask "pastebot" do
  version "2.4.5"
  sha256 "6a206e1c43bb9594f3b23084633e00a3c671afb8b0addfe46eeb04f1cffc1f89"

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
