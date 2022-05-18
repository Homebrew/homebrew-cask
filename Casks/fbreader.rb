cask "fbreader" do
  version "0.9.0"
  sha256 :no_check

  url "https://fbreader.org/files/macos/FBReaderMacOS.dmg"
  appcast "https://fbreader.org/macos/"
  name "FBReader"
  desc "Book reader"
  homepage "https://fbreader.org/macos/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "FBReader.app"

  zap trash: "~/.FBReader"
end
