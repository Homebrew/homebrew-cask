cask "luanti" do
  arch arm: "arm64", intel: "x86_64"

  version "5.15.1,12.3"
  sha256 arm:   "846539882367658d9137b26e83a590dd6ebfc110861e3d1f213b833899bad24f",
         intel: "7c66d8e38dc3806f1dbaf11f1d2fd999453d576df6e21c38a57917305fab115a"

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
