cask "microblog" do
  version "2.0.3"
  sha256 "387881f84207206de95d214b4d49e9d19378cc5332b87c045723ba78a8d8116a"

  # s3.amazonaws.com/micro.blog/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/micro.blog/mac/Micro.blog_#{version}.zip"
  appcast "https://s3.amazonaws.com/micro.blog/mac/appcast.xml"
  name "Micro.blog"
  desc "Microblogging and social networking service"
  homepage "https://help.micro.blog/2017/mac-version/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Micro.blog.app"

  zap trash: [
    "~/Library/Application Support/blog.micro.mac",
    "~/Library/Caches/blog.micro.mac",
    "~/Library/Caches/com.crashlytics.data/blog.micro.mac",
    "~/Library/Caches/io.fabric.sdk.mac.data/blog.micro.mac",
    "~/Library/Cookies/blog.micro.mac.binarycookies",
    "~/Library/Preferences/blog.micro.mac.plist",
    "~/Library/Saved Application State/blog.micro.mac.savedState",
  ]
end
