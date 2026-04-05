cask "impactor" do
  version "2.2.0"
  sha256 "4aed8470a286485b1d332a78d35a927ade25df961b03b170a5567f1064949d99"

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
