cask "icon-composer" do
  version "1.0"
  sha256 :no_check

  url "https://developer.apple.com/download/files/icon-composer.dmg"
  name "Icon Composer"
  desc "Apple tool to create multi-platform icons"
  homepage "https://developer.apple.com/icon-composer/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.apple.IconComposer"]&.short_version
    end
  end

  depends_on macos: ">= :sequoia"

  app "Icon Composer.app"

  zap trash: [
    "~/Library/Application Scripts/com.apple.IconComposer",
    "~/Library/Application Scripts/com.apple.IconComposerQuickLookPreviewAppExtension",
    "~/Library/Application Scripts/com.apple.IconComposerThumbnailExtension",
  ]
end
