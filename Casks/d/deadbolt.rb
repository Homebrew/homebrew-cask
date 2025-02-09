cask "deadbolt" do
  arch arm: "-arm64"

  version "2.0.0"
  sha256 arm:   "ad2d7780f7032018cb40241781f445c5fb1b4cf6adc481917735472ba9f2a8da",
         intel: "3584529c35711c56d6f118ce06e76e7c14dafe8b71608aa25ee42ccf6e5dd633"

  url "https://github.com/alichtman/deadbolt/releases/download/v#{version}/Deadbolt-#{version}#{arch}.dmg"
  name "Deadbolt"
  desc "File encryption tool"
  homepage "https://github.com/alichtman/deadbolt"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Deadbolt.app"

  zap trash: [
    "~/Library/Application Support/deadbolt",
    "~/Library/Preferences/org.alichtman.deadbolt.plist",
    "~/Library/Saved Application State/org.alichtman.deadbolt.savedState",
  ]
end
