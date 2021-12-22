cask "gb-studio" do
  version "3.0.1"
  sha256 "84b376656a9c7a3325a558368d8627d8d559b346997e961e051b909799b0fc62"

  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/GB-Studio-Mac-#{version}.zip",
      verified: "github.com/chrismaltby/gb-studio/"
  name "GB Studio"
  desc "Drag and drop retro game creator"
  homepage "https://www.gbstudio.dev/"

  app "GB Studio.app"
end
