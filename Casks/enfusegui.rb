cask "enfusegui" do
  version "3.23.0"
  sha256 "4314c1735730dc7b3be1ad4320e026dc2b8bd28cbaf4af37c6990ba797d81462"

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
