cask "impactor" do
  version "2.2.2"
  sha256 "6fb6ad117af7a20b8f9c49f1791872dad56c9d1ce177c8cfcc52407f83ddbe7d"

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
