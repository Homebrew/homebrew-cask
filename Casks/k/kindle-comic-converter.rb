cask "kindle-comic-converter" do
  arch arm: "arm", intel: "i386"

  version "7.4.1"
  sha256 arm:   "94f413b82c63e0be1fe7be9247e44c49b9d632432314d7ad2a5e9dca2cc60841",
         intel: "24d52b3094b49e6a46bcd47eb8b1c85e915a4b3567709dbcdf2aaafe40671ce6"

  url "https://github.com/ciromattia/kcc/releases/download/v#{version}/kcc_macos_#{arch}_#{version}.dmg"
  name "Kindle Comic Converter"
  name "KCC"
  desc "Comic and manga converter for ebook readers"
  homepage "https://github.com/ciromattia/kcc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Kindle Comic Converter.app"

  zap trash: "~/Library/Preferences/com.kindlecomicconverter.KindleComicConverter.plist"
end
