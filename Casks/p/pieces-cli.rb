cask "pieces-cli" do
  version "1.2.4"
  sha256 "8c3f210254221b5dcef1a0f0798e0a1f3883758089b1017d4495e7181ef20781"

  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-mac-#{version}.tar.gz",
      verified: "storage.googleapis.com/app-releases-59612ba/pieces-cli/release/"
  name "Pieces CLI"
  desc "Command-line tool for Pieces.app"
  homepage "https://code.pieces.app/"

  livecheck do
    url "https://code.pieces.app/cli-version"
    regex(/pieces[._-]cli[._-]v?(\d+(?:\.\d+)+)/i)
  end

  binary "pieces"

  zap trash: "~/Library/.piecescli-cache"

  caveats do
    requires_rosetta
  end
end
