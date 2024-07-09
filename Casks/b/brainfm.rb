cask "brainfm" do
  version "0.1.5"
  sha256 "c6869346e1b68aa43db89f785bca6311d1aee117975a0df47c72cf7ab478e7c0"

  url "https://github.com/Dinius/Brain.fm-Desktop-Client/releases/download/v#{version}/brainfm-macos.zip"
  name "Brain.fm"
  desc "Desktop client for brain.fm"
  homepage "https://github.com/Dinius/Brain.fm-Desktop-Client"

  app "Brain.fm.app"

  zap trash: [
    "~/Library/Preferences/com.electron.brain.fm.helper.plist",
    "~/Library/Preferences/com.electron.brain.fm.plist",
    "~/Library/Saved Application State/com.electron.brain.fm.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
