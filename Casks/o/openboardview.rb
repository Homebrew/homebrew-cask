cask "openboardview" do
  version "9.95.2"
  sha256 "0d70f9a2c87ff40217385976d51795f21cb45476383c8b36f1e380e3cd2b6b40"

  url "https://github.com/OpenBoardView/OpenBoardView/releases/download/#{version}/OpenBoardView-#{version}-Darwin-x86_64.dmg",
      verified: "github.com/OpenBoardView/OpenBoardView/"
  name "OpenBoardView"
  desc "File viewer for .brd files"
  homepage "https://openboardview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "openboardview.app"

  zap trash: "~/Library/Application Support/OpenBoardView"

  caveats do
    requires_rosetta
  end
end
