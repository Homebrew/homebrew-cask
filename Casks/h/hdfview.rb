cask "hdfview" do
  version "3.3.1"
  sha256 "91ee9832cd8a82e6d127faf5dc1b156523ecf995a552e08a07ebe37c45bf17da"

  url "https://support.hdfgroup.org/ftp/HDF5/releases/HDF-JAVA/hdfview-#{version}/bin/HDFView-#{version}-macos11_64.tar.gz"
  name "HDFView"
  desc "Tool for browsing and editing HDF files"
  homepage "https://confluence.hdfgroup.org/display/support"

  livecheck do
    url "https://confluence.hdfgroup.org/display/support/Download+HDFView"
    regex(/HDFView\+(\d+(?:\.\d+)+)/i)
  end

  container nested: "HDFView-#{version}.dmg"

  app "HDFView.app"

  zap trash: [
    "~/.hdfview#{version}",
    "~/Library/Preferences/HDFView.hdfgroup.org.plist",
    "~/Library/Saved Application State/hdf.view.savedState",
  ]
end
