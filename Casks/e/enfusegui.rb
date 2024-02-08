cask "enfusegui" do
  version "3.24.1"
  sha256 "8cb4d1abbf38f20ed0d750921237279bd3478ea3702bfe24fc2f864b2ce07896"

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
