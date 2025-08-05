cask "blender-benchmark" do
  version "3.1.0,2.0"
  sha256 "b7a77c636ac4bbb32bc5469fe8ae1429bb13a7af9cb6690094c38271de30b3bc"

  url "https://opendata.blender.org/cdn/BlenderBenchmark#{version.csv.second}/launcher/benchmark-launcher-#{version.csv.first}-macos.dmg"
  name "Blender Open Data Benchmark"
  desc "3D performance benchmarking tool"
  homepage "https://opendata.blender.org/"

  livecheck do
    url :homepage
    regex(%r{["'][^"']+?Benchmark(\d+(?:\.\d+)+)/[^"']*?benchmark[._-]launcher[._-](\d+(?:\.\d+)+)[._-]macos\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :sierra"

  app "Blender Benchmark Launcher.app"

  zap trash: [
    "~/Library/Caches/blender-benchmark-launcher",
    "~/Library/Saved Application State/org.blenderfoundation.benchmark.release.savedState",
  ]
end
