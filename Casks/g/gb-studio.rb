cask "gb-studio" do
  arch arm: "apple-silicon", intel: "intel"

  version "4.2.1"
  sha256 arm:   "5634ffcb977ff5b0e7bdebe9b5600f95c7741f4e5dd68bd5a6165c99ddf766dc",
         intel: "863d2db8092420f1372974dcd75d81faf432a9406646038879213ab8584212c2"

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
