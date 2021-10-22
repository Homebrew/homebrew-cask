cask "blender-benchmark" do
  version "2.0.4"
  sha256 "5197bf7d262bda630ea2c01bf0d097c2f7f1533f1affe33d0ceac383d3c30b2e"

  url "https://opendata.blender.org/cdn/BlenderBenchmark2.0/launcher/benchmark-launcher-#{version}-macos.dmg"
  name "Blender Open Data Benchmark"
  desc "Tool to benchmark the performance of 3D scenes"
  homepage "https://opendata.blender.org/"

  app "Blender Benchmark Launcher.app"
end
