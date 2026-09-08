cask "luanti" do
  arch arm: "arm64", intel: "x86_64"

  version "5.17.0,12.3"
  sha256 arm:   "0ba118b537d3cc6fd07cd2268fef25e515fc6d87c27ad69b476144a8e28dba3c",
         intel: "deb7c09b4425a95203ed6729949ca3c35e565e7771be896f6bd2b9ad52241de7"

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
