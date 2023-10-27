cask "hdfview" do
  version "3.3.1"
  sha256 "0fc8c0c1abc24a63cf6d8fb46885766dc45e54240589d60ed358ae70a5cd3e04"

  url "https://support.hdfgroup.org/ftp/HDF5/releases/HDF-JAVA/hdfview-#{version}/bin/HDFView-#{version}-macos11_64.tar.gz"
  name "HDFView"
  desc "Tool for browsing and editing HDF files"
  homepage "https://confluence.hdfgroup.org/display/support"

  livecheck do
    url "https://confluence.hdfgroup.org/display/support/Download+HDFView"
    regex(/HDFView\+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"
  container nested: "HDFView-#{version}.dmg"

  app "HDFView.app"

  zap trash: [
    "~/.hdfview#{version}",
    "~/Library/Preferences/HDFView.hdfgroup.org.plist",
    "~/Library/Saved Application State/hdf.view.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
