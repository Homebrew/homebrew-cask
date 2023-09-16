cask "antconc" do
  arch arm: "silicon", intel: "intel"

  version "4.2.3"
  sha256 arm:   "9de860192c1f31ba500574f07ac5af73f2e0bc3c4ffc2c2c7a7d0b1e7f86e73c",
         intel: "e974003aedc51253fdbb1edaf6cf74f851d41b8d4b35fe21fc9d80ff158342c0"

  url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/apple-#{arch}/AntConc.dmg"
  name "AntConc"
  desc "Corpus analysis toolkit for concordancing and text analysis"
  homepage "https://www.laurenceanthony.net/software/antconc/"

  livecheck do
    url :homepage
    regex(/>\s*Mac[^<]*\((\d+(?:\.\d+)+)\)\s*</i)
  end

  app "AntConc.app"

  zap trash: "~/Library/Preferences/AntConc.plist"
end
