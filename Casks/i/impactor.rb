cask "impactor" do
  version "2.7.0"
  sha256 "e3ad16681f69b2d1f5c9a2d407c11695509cc6ad669e68694e2fbafc8b3ce61e"

  url "https://github.com/khcrysalis/Impactor/releases/download/v#{version}/Impactor-macos-universal.dmg"
  name "Impactor"
  desc "Sideloading application for iOS/tvOS"
  homepage "https://github.com/khcrysalis/Impactor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Impactor.app"

  zap trash: "~/.config/PlumeImpactor"
end
