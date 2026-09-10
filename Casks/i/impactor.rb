cask "impactor" do
  version "2.6.2"
  sha256 "66f967222f43a0b9d0383694af6d957ab5b4ed438aeb34a09b858ad2be5c93e8"

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
