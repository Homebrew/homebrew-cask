cask "luanti" do
  arch arm: "arm64", intel: "x86_64"

  version "5.15.2,12.3"
  sha256 arm:   "6a052eced6e674167aa19cde6ec575a30ee463cc29580d3d25331130c0077962",
         intel: "8838d087d2023ffff682f9a5dbd857d5502c0ae880512997cb42192c1381a433"

  url "https://github.com/luanti-org/luanti/releases/download/#{version.csv.first}/luanti_#{version.csv.first}-macos#{version.csv.second}_#{arch}.zip",
      verified: "github.com/luanti-org/luanti/"
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
