cask "gb-studio" do
  version "3.0.2"
  sha256 "902799ecf53a622e644e86ebfc27b3dbaf0bb9eb20eb5e71f5594c53a632152d"

  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/gb-studio-mac.zip",
      verified: "github.com/chrismaltby/gb-studio/"
  name "GB Studio"
  desc "Drag and drop retro game creator"
  homepage "https://www.gbstudio.dev/"

  app "GB Studio.app"
end
