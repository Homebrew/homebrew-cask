cask "enfusegui" do
  version "3.2.2"
  sha256 "b4927431294fe5b66d5d29998840c43d93fc909245c3a008701bfbeb84b87a82"

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
