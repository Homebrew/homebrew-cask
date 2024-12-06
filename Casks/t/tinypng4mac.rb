cask "tinypng4mac" do
  version "2.0.0"
  sha256 "10107812a5cca8cb13aa075141534229625e7fbee588e28b11813e93d00e5c3f"

  url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/TinyPNG4Mac_#{version.no_dots}00.zip"
  name "TinyPNG4Mac"
  desc "TinyPNG client"
  homepage "https://github.com/kyleduo/TinyPNG4Mac"

  app "TinyPNG4Mac.app"

  zap trash: "~/Library/Preferences/com.kyleduo.tinypngmac.plist"
end
