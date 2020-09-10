cask "image2icon" do
  version "2.11"
  sha256 "a76038dd4d2cb3741235f00f2cc5dcd2f92c42a7e60c4981e17332a7fce3d721"

  # sf-applications.s3.amazonaws.com/Image2Icon/ was verified as official when first introduced to the cask
  url "https://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip"
  appcast "http://apps.shinynode.com/apps/image2icon_appcast.xml"
  name "Image2Icon"
  desc "Icon creator and file and folder customizer"
  homepage "http://www.img2icnsapp.com/"

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
