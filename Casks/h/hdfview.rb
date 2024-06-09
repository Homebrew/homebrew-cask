cask "hdfview" do
  version "3.3.1"
  sha256 "0fc8c0c1abc24a63cf6d8fb46885766dc45e54240589d60ed358ae70a5cd3e04"

  url "https://github.com/HDFGroup/hdfview/releases/download/v#{version}/HDFView-#{version}-Darwin.tar.gz",
      verified: "github.com/HDFGroup/hdfview/"
  name "HDFView"
  desc "Tool for browsing and editing HDF files"
  homepage "https://www.hdfgroup.org/downloads/hdfview/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"
  container nested: "HDFView-#{version}.dmg"

  app "HDFView.app"

  zap trash: [
    "~/.hdfview*",
    "~/Library/Preferences/HDFView.hdfgroup.org.plist",
    "~/Library/Saved Application State/hdf.view.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
