cask "blender-benchmark" do
  version "3.3.0,2.0"
  sha256 "0e911651a26a8aa51bee8f09a4add8f7e56505a520a8a212b356bc908a47164c"

  url "https://download.blender.org/release/BlenderBenchmark#{version.csv.second}/launcher/benchmark-launcher-#{version.csv.first}-macos.dmg"
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
    "~/Library/Saved Application State/org.blenderfoundation.benchmark.release.savedState",
  ]
end
