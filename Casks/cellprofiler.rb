cask "cellprofiler" do
  version "4.0.3"
  sha256 "33a3165517cfe42aed60864875e22bed1d781ee9ffdd5d848b1ccaa8abcd2631"

  # cellprofiler-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://cellprofiler-releases.s3.amazonaws.com/CellProfiler-macOS-#{version}.zip"
  appcast "https://github.com/CellProfiler/CellProfiler/releases.atom"
  name "CellProfiler"
  desc "Open-source application for biological image analysis"
  homepage "https://cellprofiler.org/"

  app "CellProfiler.app"
end
