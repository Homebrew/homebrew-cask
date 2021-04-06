cask "image2icon" do
  version "2.13,892"
  sha256 "631d503dfdb264d20ce057c6ea5b65c57b6ea44b1596f453c951922de9fdfe6d"

  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version.before_comma}.zip",
      verified: "sf-applications.s3.amazonaws.com/Image2Icon/"
  name "Image2Icon"
  desc "Icon creator and file and folder customizer"
  homepage "https://www.img2icnsapp.com/"

  livecheck do
    url "http://apps.shinynode.com/apps/image2icon_appcast.xml"
    strategy :sparkle
  end

  app "Image2Icon.app"

  zap trash: [
    "~/Library/Caches/net.shinyfrog.image2icon",
    "~/Library/Preferences/net.shinyfrog.image2icon.plist",
    "~/Library/Containers/net.shinyfrog.image2icon",
    "~/Library/Containers/net.shinyfrog.image2icon.templateRenderer",
    "~/Library/Containers/net.shinyfrog.templateRenderer",
    "~/Library/Saved Application State/net.shinyfrog.image2icon.savedState",
  ]
end
