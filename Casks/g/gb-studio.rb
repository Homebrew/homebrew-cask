cask "gb-studio" do
  version "3.2.1"
  sha256 "79f041367b6d68cd87851c7b3e810acb45f9357038c285e6b7e071cacbff0f3c"

  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/gb-studio-mac.zip",
      verified: "github.com/chrismaltby/gb-studio/"
  name "GB Studio"
  desc "Drag and drop retro game creator"
  homepage "https://www.gbstudio.dev/"

  app "GB Studio.app"

  zap trash: [
    "~/Library/Application Support/GB Studio",
    "~/Library/Preferences/dev.gbstudio.gbstudio.plist",
    "~/Library/Saved Application State/dev.gbstudio.gbstudio.savedState",
  ]
end
