cask "impactor" do
  version "2.3.0"
  sha256 "345de49924bb827d4a44a92b2a221ccaaa5ee0e9a38b475508666bf1d9709474"

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
