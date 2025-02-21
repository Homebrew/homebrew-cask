cask "luanti" do
  arch arm: "arm64", intel: "x86_64_flag_O1"

  version "5.11.0,11.3"
  sha256 arm:   "7f66316ccb37859ec1558a84d2701d9cb55107b7c97c0787b8a6556b790aadd2",
         intel: "7e540ebfd97ee39c0f9825be4493da519ba6ae7d1f57f5fc13f6ef6bda1a3a30"

  url "https://github.com/minetest/minetest/releases/download/#{version.csv.first}/luanti_#{version.csv.first}-macos#{version.csv.second}_#{arch}.zip",
      verified: "github.com/minetest/minetest/"
  name "Luanti"
  desc "Voxel game-creation platform"
  homepage "https://www.luanti.org/"

  livecheck do
    url "https://www.luanti.org/downloads/"
    regex(/href=.*?luanti[._-]v?(\d+(?:\.\d+)+)[._-]macos(\d+(?:\.\d+)+)[._-]#{arch}\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :big_sur"

  app "Luanti.app"

  zap trash: [
    "~/Library/Application Support/minetest",
    "~/Library/Saved Application State/org.luanti.luanti.savedState",
  ]
end
