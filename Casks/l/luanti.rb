cask "luanti" do
  arch arm: "arm64", intel: "x86_64"

  version "5.16.1,12.3"
  sha256 arm:   "cbc8d041aa4ad27fdd7f5ce9185f3015cf8b3d4b7426fea980572f08958d5482",
         intel: "55cfa3218ff60037cbd81019b893d1a7cd38ef7e48cb1c57001f1a64a7586186"

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

  depends_on macos: :monterey

  app "Luanti.app"

  zap trash: [
    "~/Library/Application Support/minetest",
    "~/Library/Saved Application State/org.luanti.luanti.savedState",
  ]
end
