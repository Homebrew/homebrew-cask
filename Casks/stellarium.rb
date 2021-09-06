cask "stellarium" do
  version "0.21.1"
  sha256 "265445ba53f29de4621c021a1e72f7f366e0f397f87edfbaf57dfb1f3ed981aa"

  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}.zip",
      verified: "github.com/Stellarium/stellarium/"
  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  depends_on macos: ">= :sierra"

  app "Stellarium.app"

  zap trash: "~/Library/Preferences/Stellarium"
end
