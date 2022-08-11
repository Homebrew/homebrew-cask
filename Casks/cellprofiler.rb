cask "cellprofiler" do
  version "4.2.3"
  sha256 "d52fe1adba9eaa4e16341487059152fd8d4c09f17ae20f71400be4002de8d864"

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
