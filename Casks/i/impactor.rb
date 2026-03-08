cask "impactor" do
  version "2.1.1"
  sha256 "99fc87c65a7b2a0b12cf90b8ddfeac83a4d2d86e7c5fc9791d3d441194feffdd"

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
