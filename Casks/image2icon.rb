cask "image2icon" do
  version "2.12,890"
  sha256 "db9b7c25834a6d30cd9b050d39739ffe7e2c40b914aaf4ac07eece03fb36913b"

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
