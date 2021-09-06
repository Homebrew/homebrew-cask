cask "cellprofiler" do
  version "4.2.1"
  sha256 "38622f987d965da8115f6abe6f809fb7313b360272c8f983baa1597f5f3d50a3"

  url "https://cellprofiler-releases.s3.amazonaws.com/CellProfiler-macOS-#{version}.zip",
      verified: "cellprofiler-releases.s3.amazonaws.com/"
  name "CellProfiler"
  desc "Open-source application for biological image analysis"
  homepage "https://cellprofiler.org/"

  livecheck do
    url "https://github.com/CellProfiler/CellProfiler"
    strategy :github_latest
  end

  app "CellProfiler.app"
end
