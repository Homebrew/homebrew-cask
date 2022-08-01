cask "microblog" do
  version "2.5.4,120"
  sha256 "4eaf2eb371570afc962c0e9f4c7bbbe35cdf39e185b7ba58ee43b73c35af8cdd"

  url "https://s3.amazonaws.com/micro.blog/mac/Micro.blog_#{version.csv.first}.zip",
      verified: "s3.amazonaws.com/micro.blog/"
  name "Micro.blog"
  desc "Microblogging and social networking service"
  homepage "https://help.micro.blog/t/micro-blog-for-mac/45"

  livecheck do
    url "https://s3.amazonaws.com/micro.blog/mac/appcast.xml"
    strategy :sparkle
  end

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
