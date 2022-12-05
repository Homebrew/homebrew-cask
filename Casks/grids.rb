cask "grids" do
  version "8.2.4"
  sha256 "87ef34e75984594d422f8f5ea0701e2130735442f8ba5721e37261be72322082"

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
