cask "luanti" do
  arch arm: "arm64", intel: "x86_64"

  version "5.18.0,12.3"
  sha256 arm:   "789614c1f02d94ba0352b4ada54f38185aa0ea466f26d2266bc027e78c265c77",
         intel: "e5aad530f69de1dfdb92c4bd236af297037425be26db6ebb4f76a89fcd3fa20f"

  url "https://github.com/luanti-org/luanti/releases/download/#{version.csv.first}/luanti_#{version.csv.first}_macos#{version.csv.second}_#{arch}.zip"
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

  app "luanti.app"

  zap trash: [
    "~/Library/Application Support/minetest",
    "~/Library/Saved Application State/org.luanti.luanti.savedState",
  ]
end
