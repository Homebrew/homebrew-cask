cask "nuclear" do
  version "3f9007"
  sha256 "e383f8ac88691140c793f5c8ed9332d42f7a37eee0cddeeed550856076971753"

  url "https://github.com/nukeop/nuclear/releases/download/#{version}/nuclear-#{version}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    skip "Releases are tagged as partial commit hashes"
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
