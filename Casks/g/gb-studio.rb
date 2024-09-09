cask "gb-studio" do
  arch arm: "apple-silicon", intel: "intel"

  version "4.1.2"
  sha256 arm:   "1f67a12cadf955551b52a814667465dd0c89a599657e4653fc51c6242e625226",
         intel: "7affaf080dbf1cc1f6f0d48c59f4a7f9e13f6663fdc84d3d26fb913928691744"

  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/gb-studio-mac-#{arch}.zip",
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
