cask "pieces" do
  version "1.2.3"
  sha256 "6c8c484cd796338d3fec91b247e75bcd26c1bef284c74950157bdb5d2ab5702e"

  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-mac-#{version}.tar.gz",
      verified: "storage.googleapis.com/app-releases-59612ba/pieces-cli/release/"
  name "Pieces"
  desc "Command-line tool for Pieces.app"
  homepage "https://code.pieces.app/"

  livecheck do
    url "https://code.pieces.app/cli-version"
    regex(/pieces[._-]cli[._-]v?(\d+(?:\.\d+)+)/)
  end

  binary "pieces"
end
