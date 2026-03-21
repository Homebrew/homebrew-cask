cask "impactor" do
  version "2.1.2"
  sha256 "a6db7ba92186587a64229f493b6987ce2a90f0668ad3763e5f305df1e6f8b75a"

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
