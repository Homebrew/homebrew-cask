cask "pieces" do
  version "1.2.1"
  sha256 "a8248ab589b38a322b83bb77c03e752e32f2e6b83b4a9030affd0f5825c6da27"

  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-#{version}.tar.gz", verified: "storage.googleapis.com/app-releases-59612ba/pieces-cli/"
  name "pieces"
  desc "A command line tool for Pieces.app"
  homepage "https://code.pieces.app"

  livecheck do
    url "https://code.pieces.app/cli-version"
    strategy :page_match
    regex(/pieces-cli-(\d+(?:\.\d+)+)/)
  end

  binary "pieces"
end
