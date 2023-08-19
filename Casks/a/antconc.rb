cask "antconc" do
  arch arm: "silicon", intel: "intel"

  version "4.2.1"
  sha256 arm:   "4cf5564cfecc408fff8ada0ca74b5014b881f3915fa35afb3eea9f8240e58913",
         intel: "391f73e85c66db508d0c36bfd425ceb47761a92ecfd8b395b774890c597a19ae"

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
