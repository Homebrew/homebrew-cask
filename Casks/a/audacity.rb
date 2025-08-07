cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.5"
  sha256 arm:   "20beb5515153a0df8cb02c270a39a90efbfaaa5f2d21fe1db06c7b0d987ea653",
         intel: "d9ba4c5b61030151953bfd0c0611fbb340208d3a3f149a9a6c297155e1f57289"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
