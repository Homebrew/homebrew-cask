cask "icon-composer" do
  version "1.1"
  sha256 "7c60d4fdedc1e9c7af26f583a3a311bf9dba2ffbb9a2af957cbb6aff499164af"

  url "https://devimages-cdn.apple.com/design/resources/download/Icon-Composer-#{version}.dmg"
  name "Icon Composer"
  desc "Apple tool to create multi-platform icons"
  homepage "https://developer.apple.com/icon-composer/"

  livecheck do
    url :homepage
    regex(/Icon[._-]Composer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sequoia"

  app "Icon Composer.app"

  zap trash: [
    "~/Library/Application Scripts/com.apple.IconComposer",
    "~/Library/Application Scripts/com.apple.IconComposerQuickLookPreviewAppExtension",
    "~/Library/Application Scripts/com.apple.IconComposerThumbnailExtension",
  ]
end
