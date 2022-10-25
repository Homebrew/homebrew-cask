cask "grids" do
  version "8.2.2"
  sha256 "85dfacb85d888e96f0b7573ac15b59d5ad23089752f23a2cfe64ffa400f03cf9"

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  name "Grids"
  desc "Instagram desktop application"
  homepage "https://gridsapp.net/"

  livecheck do
    url "https://gridsapp.net/appcast.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]["mac"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Grids.app"

  uninstall quit: "com.thinktimecreations.Grids"

  zap trash: [
    "~/Library/Application Support/ThinkTimeCreations/Grids",
    "~/Library/Preferences/com.thinktimecreations.Grids.plist",
  ]
end
