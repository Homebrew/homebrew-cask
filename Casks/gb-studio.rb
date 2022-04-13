cask "gb-studio" do
  version "3.0.3"
  sha256 "be9ef5b72ce54daec4f7870d3c1178ac2c4efb67cc523a76fdcf3d18edc1e72b"

  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/gb-studio-mac.zip",
      verified: "github.com/chrismaltby/gb-studio/"
  name "GB Studio"
  desc "Drag and drop retro game creator"
  homepage "https://www.gbstudio.dev/"

  app "GB Studio.app"
end
