cask "enfusegui" do
  version "3.24.0"
  sha256 "5b85bd7b4e4f57f1ccf429881fe7eebcf895f43dd7d6ea61b48a9f152ec5302f"

  url "https://swipeware.com/apps/enfusegui/v#{version.major}/EnfuseGUI-#{version}.dmg"
  name "EnfuseGUI"
  desc "HDR image creator"
  homepage "https://swipeware.com/applications/enfusegui/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page[/href=.*?enfusegui[._-]?v?(\d+(?:_\d+)+)-mac/i, 1]
      next if match.blank?

      match.tr("_", ".")
    end
  end

  depends_on macos: ">= :high_sierra"

  app "EnfuseGUI.app"

  zap trash: [
    "~/Library/Application Scripts/com.swipeware.enfusegui",
    "~/Library/Containers/com.swipeware.enfusegui",
  ]
end
