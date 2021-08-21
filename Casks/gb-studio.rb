cask "gb-studio" do
  version "1.2.2"
  sha256 "5de89971ecb27a855c5250b2b3eddfb906c818f01bdcbee75a444355f456512c"

  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/gb-studio-develop-darwin_x86_64.zip",
      verified: "github.com/chrismaltby/gb-studio/"
  name "GB Studio"
  desc "Drag and drop retro game creator"
  homepage "https://www.gbstudio.dev/"

  app "GB Studio.app"
end
