cask "openlist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "b3af22c1d662ccc7a9b138f2a015eab59dfb4227ab2f0dbf66d4f504397c06d7",
         intel: "71d1972b097801296beadc58da5e2ac1245402a81d98e90c852c1ee00e130f10"

  url "https://github.com/OpenListTeam/OpenList-Desktop/releases/download/v#{version}/OpenList.Desktop_#{version}_#{arch}.dmg",
      verified: "github.com/OpenListTeam/OpenList-Desktop/"
  name "OpenList Desktop"
  desc "Desktop application for OpenList"
  homepage "https://oplist.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "OpenList Desktop.app"

  # No zap stanza required
end
