cask "pieces" do
  version "1.2.3"
  sha256 "6c8c484cd796338d3fec91b247e75bcd26c1bef284c74950157bdb5d2ab5702e"

  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-mac-#{version}.tar.gz", verified: "storage.googleapis.com/app-releases-59612ba/pieces-cli/"
  name "pieces"
  desc "Command-line tool for Pieces.app"
  homepage "https://code.pieces.app/"

  livecheck do
    url "https://code.pieces.app/cli-version"
    strategy :page_match
    regex(/pieces-cli-(\d+(?:\.\d+)+)/)
  end

  binary "pieces"
end
