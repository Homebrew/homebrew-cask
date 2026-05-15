cask "tev" do
  arch intel: "-intel"

  version "2.12.0"
  sha256 arm:   "ca3bd77e657f8009d347beb25060e218334a7095df0b7b115a5224b371b8e55b",
         intel: "7d652a159505e233ebb3590402833c45d4f264344d617ebc5ca298608336c7a2"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "tev.app"
  binary "#{appdir}/tev.app/Contents/MacOS/tev"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
