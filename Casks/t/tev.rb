cask "tev" do
  arch intel: "-intel"

  version "2.8.2"
  sha256 arm:   "927666fc2b84705edb44a050e9ca747589a44ad81df3eab2bdcc4d2aee324fb6",
         intel: "d9eaaecd99f3006a4b880d9b2a193d49dfc286fd2ed90d94c34bb4a0d945c7d6"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "tev.app"
  binary "#{appdir}/tev.app/Contents/MacOS/tev"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
