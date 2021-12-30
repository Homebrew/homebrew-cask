cask "enfusegui" do
  version "3.1.2"
  sha256 "4a96ab245d8fafaea90d5f3e86df4d7094928ec2d920ae25c9b86b317fc53f8d"

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
