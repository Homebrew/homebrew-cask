cask "luanti" do
  arch arm: "arm64", intel: "x86_64"

  version "5.15.0,12.3"
  sha256 arm:   "f1c4506acd50c243181124e1caa30b8aa16d978efa7a35b3e15d25127f637a83",
         intel: "570df1c2586ef83557115bf81535bc06a9a519d1e192bf2e7fd99943a187df95"

  url "https://github.com/minetest/minetest/releases/download/#{version.csv.first}/luanti_#{version.csv.first}-macos#{version.csv.second}_#{arch}.zip",
      verified: "github.com/minetest/minetest/"
  name "Luanti"
  desc "Voxel game-creation platform"
  homepage "https://www.luanti.org/"

  livecheck do
    url "https://www.luanti.org/en/downloads/"
    regex(/href=.*?luanti[._-]v?(\d+(?:\.\d+)+)[._-]macos(\d+(?:\.\d+)+)[._-]#{arch}\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :monterey"

  app "Luanti.app"

  zap trash: [
    "~/Library/Application Support/minetest",
    "~/Library/Saved Application State/org.luanti.luanti.savedState",
  ]
end
