cask "tinypng4mac" do
  version "1.0.7"
  sha256 "4298642b0df6a310ce5131e4534deb826e4eef98fa8d2baf516624f3a15f4c23"

  url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/TinyPNG4Mac_#{version.dots_to_underscores}.zip"
  name "TinyPNG4Mac"
  desc "TinyPNG client"
  homepage "https://github.com/kyleduo/TinyPNG4Mac"

  app "TinyPNG4Mac.app"

  zap trash: "~/Library/Preferences/com.kyleduo.tinypngmac.plist"
end
