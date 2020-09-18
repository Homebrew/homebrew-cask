cask "cellprofiler" do
  version "4.0.4"
  sha256 "eb48c956637db7564d058b1643c034da585f52f4c8fcfe7ba924e96e55ea4195"

  # cellprofiler-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://cellprofiler-releases.s3.amazonaws.com/CellProfiler-macOS-#{version}.zip"
  appcast "https://github.com/CellProfiler/CellProfiler/releases.atom"
  name "CellProfiler"
  desc "Open-source application for biological image analysis"
  homepage "https://cellprofiler.org/"

  app "CellProfiler.app"
end
