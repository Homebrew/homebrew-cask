cask "icon-composer" do
  version "1.2"
  sha256 "dce4d78a615e543832fb2cdca3b28a31355cf21d57b6b4ab96f5b278ed7d5af6"

  url "https://devimages-cdn.apple.com/design/resources/download/Icon-Composer-#{version}.dmg"
  name "Icon Composer"
  desc "Apple tool to create multi-platform icons"
  homepage "https://developer.apple.com/icon-composer/"

  # The homepage no longer provides version information. The download link on
  # the page points to an Icon Composer download page but it's behind a login.
  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :sequoia"

  app "Icon Composer.app"

  zap trash: [
    "~/Library/Application Scripts/com.apple.IconComposer",
    "~/Library/Application Scripts/com.apple.IconComposerQuickLookPreviewAppExtension",
    "~/Library/Application Scripts/com.apple.IconComposerThumbnailExtension",
  ]
end
