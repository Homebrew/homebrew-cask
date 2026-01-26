cask "impactor" do
  version "2.0.2"
  sha256 "a8a3e4a6f030a259ed89b1778bef80a449db2495f93348d971a1aed4f54b3ab7"

  url "https://github.com/khcrysalis/Impactor/releases/download/v#{version}/Impactor-macos-universal.dmg"
  name "Impactor"
  desc "Sideloading application for iOS/tvOS"
  homepage "https://github.com/khcrysalis/Impactor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Impactor.app"

  zap trash: "~/.config/PlumeImpactor"
end
