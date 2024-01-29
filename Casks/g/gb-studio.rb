cask "gb-studio" do
  version "3.2.0"
  sha256 "ae43525f08b94b93dc10b3a8593539163858ae13ef657208701213eb5425d426"

  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/gb-studio-mac.zip",
      verified: "github.com/chrismaltby/gb-studio/"
  name "GB Studio"
  desc "Drag and drop retro game creator"
  homepage "https://www.gbstudio.dev/"

  app "GB Studio.app"
end
