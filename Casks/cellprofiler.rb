cask "cellprofiler" do
  version "4.0.7"
  sha256 "60e489ff335fd3484f8b4fa24b2859aa86289b4f9b82628e687f86f55a000d8a"

  # cellprofiler-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://cellprofiler-releases.s3.amazonaws.com/CellProfiler-macOS-#{version}.zip"
  appcast "https://github.com/CellProfiler/CellProfiler/releases.atom"
  name "CellProfiler"
  desc "Open-source application for biological image analysis"
  homepage "https://cellprofiler.org/"

  app "CellProfiler.app"
end
