cask "deadbolt" do
  arch arm: "-arm64"

  version "2.1.1"
  sha256 arm:   "c8ce77caf427d24730fe0e9abd34cc49ebcb1650952cbbc79a2da180e7c8bee0",
         intel: "4b3950a09cb8e46ce31bfc5d54853264217810641684d298d30ecf3a05a8a4fd"

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
