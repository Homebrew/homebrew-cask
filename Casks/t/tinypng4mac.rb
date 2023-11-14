cask "tinypng4mac" do
  version "1.0.6"
  sha256 "971c2492fb0d3d400b0d4e147083a8ec9655747f966c553aefb7d0cd40b11ff7"

  url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/TinyPNG4Mac_#{version.dots_to_underscores}.zip"
  name "TinyPNG4Mac"
  desc "TinyPNG client"
  homepage "https://github.com/kyleduo/TinyPNG4Mac"

  app "TinyPNG4Mac.app"

  zap trash: "~/Library/Preferences/com.kyleduo.tinypngmac.plist"
end
