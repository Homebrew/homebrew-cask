cask "hdfview" do
  version "3.3.0"
  sha256 "be4cfcfa2c4a4be4841b660a6010b55d94430e77469ca5dc5f2d684e4737ed23"

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
