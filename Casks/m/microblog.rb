cask "microblog" do
  version "3.4"
  sha256 "ae35787ab0707dbdd3a67c98ff7f4f27a3c322c3ae40e2b9b68a8bcbdc15620f"

  url "https://s3.amazonaws.com/micro.blog/mac/Micro.blog_#{version}.zip",
      verified: "s3.amazonaws.com/micro.blog/mac/"
  name "Micro.blog"
  desc "Microblogging and social networking service"
  homepage "https://help.micro.blog/t/micro-blog-for-mac/45"

  livecheck do
    url "https://s3.amazonaws.com/micro.blog/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
