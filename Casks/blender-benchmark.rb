cask "blender-benchmark" do
  version "2.0.4"
  sha256 "5197bf7d262bda630ea2c01bf0d097c2f7f1533f1affe33d0ceac383d3c30b2e"

  url "https://opendata.blender.org/cdn/BlenderBenchmark#{version.major_minor}/launcher/benchmark-launcher-#{version}-macos.dmg"
  name "Blender Open Data Benchmark"
  desc "3D performance benchmarking tool"
  homepage "https://opendata.blender.org/"

  livecheck do
    url "https://opendata.blender.org/cdn/BlenderBenchmark#{version.major_minor}/launcher/"
    regex(/href=.*benchmark[._-]launcher[._-](\d+(?:\.\d+)+)[._-]macos\.dmg/i)
  end

  app "Blender Benchmark Launcher.app"

  zap trash: [
    "~/Library/Caches/blender-benchmark-launcher",
    "~/Library/Saved Appication State/org.blenderfoundation.benchmark.release.savedState",
  ]
end
