cask "blender-benchmark" do
  version "3.0.0,2.0"
  sha256 "d6fd4dd6f203331661a6139a9c0d00806dda750d9aefd13670d87d4336204d08"

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

  app "Blender Benchmark Launcher.app"

  zap trash: [
    "~/Library/Caches/blender-benchmark-launcher",
    "~/Library/Saved Appication State/org.blenderfoundation.benchmark.release.savedState",
  ]
end
