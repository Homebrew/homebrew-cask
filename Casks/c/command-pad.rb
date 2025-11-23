cask "command-pad" do
  version "0.1.2"
  sha256 "c889b42e9ec648f0b8cfc2cf65b56f5c40fc139486ef236eaa73b29fcc47db6a"

  url "https://github.com/supnate/command-pad/releases/download/v#{version}/Command.Pad-#{version}.dmg"
  name "Command Pad"
  desc "Start and stop command-line tools and monitor the output"
  homepage "https://github.com/supnate/command-pad"

  app "Command Pad.app"

  zap trash: [
    "~/Library/Application Support/Command Pad",
    "~/Library/Logs/Command Pad",
    "~/Library/Preferences/com.webows.commandpad.helper.plist",
    "~/Library/Preferences/com.webows.commandpad.plist",
    "~/Library/Saved Application State/com.webows/commandpad.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
