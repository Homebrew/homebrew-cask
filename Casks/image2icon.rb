cask "image2icon" do
  version "2.15,921"
  sha256 "f6ddb22e27cf722438676e86cd039e28327af069d5fc71f7af6d4dcb0dc74e12"

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
