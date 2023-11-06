cask "hdfview" do
  version "3.3.1"
  sha256 "0fc8c0c1abc24a63cf6d8fb46885766dc45e54240589d60ed358ae70a5cd3e04"

  url "https://support.hdfgroup.org/ftp/HDF5/releases/HDF-JAVA/hdfview-#{version}/bin/HDFView-#{version}-macos11_64.tar.gz"
  name "HDFView"
  desc "Tool for browsing and editing HDF files"
  homepage "https://www.hdfgroup.org/downloads/hdfview/"

  livecheck do
    url :homepage
    regex(/href=.*?HDFView[._-]v?(\d+(?:\.\d+)+)[._-]macos[^"' >]*?\.(?:t|zip)/i)
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
