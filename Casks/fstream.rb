cask "fstream" do
  version "1.4.9,699"
  sha256 :no_check

  url "https://www.sourcemac.com/fstream_FStream.tgz"
  appcast "https://www.sourcemac.com/sparkle.php?id=156&content=xml"
  name "FStream"
  homepage "https://www.sourcemac.com/?page=fstream"

  app "FStream.app"
end
