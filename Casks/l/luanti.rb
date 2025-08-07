cask "luanti" do
  arch arm: "arm64", intel: "x86_64_flag_O1"

  version "5.13.0,11.3"
  sha256 arm:   "0fb67080d10404028c36dd5359bccb58114baf28dc6ffbeaab3c2be6eb475982",
         intel: "0d8c3d761355a5343f090df3fe47af2062e2d902d26519fc318ad9c16c16c366"

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
