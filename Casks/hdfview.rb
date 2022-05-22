cask "hdfview" do
  version "3.2.0"
  sha256 "f0802a5226a38d8f99493257365b4c3d3b8d1b3dda180bbe540a43bf3d5e95f3"

  url "https://support.hdfgroup.org/ftp/HDF5/releases/HDF-JAVA/hdfview-#{version}/bin/HDFView-#{version}-osx1013_64.tar.gz"
  name "HDFView"
  desc "Is a visual tool for browsing and editing HDF files"
  homepage "https://confluence.hdfgroup.org/display/support"

  livecheck do
    url "https://confluence.hdfgroup.org/display/support/HDFView+3.2.0#files"
    strategy :page_match
    regex(%r{href=.*?/HDFView-(\d+(?:\.\d+)*)-osx1013_64\.tar\.gz}i)
  end

  container nested: "HDFView-#{version}.dmg"

  app "HDFView.app"

  zap trash: [
    "~/Library/Preferences/HDFView.hdfgroup.org.plist",
  ]
end
