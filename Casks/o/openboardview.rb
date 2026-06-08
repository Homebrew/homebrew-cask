cask "openboardview" do
  version "10.0.0"
  sha256 "236730f93853383e3df8dc451752ae33dbf39d31467f4a696137e8b78f473e7b"

  url "https://github.com/OpenBoardView/OpenBoardView/releases/download/#{version}/OpenBoardView-#{version}-Darwin.dmg",
      verified: "github.com/OpenBoardView/OpenBoardView/"
  name "OpenBoardView"
  desc "File viewer for .brd files"
  homepage "https://openboardview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "openboardview.app"

  zap trash: "~/Library/Application Support/OpenBoardView"

  caveats do
    requires_rosetta
  end
end
