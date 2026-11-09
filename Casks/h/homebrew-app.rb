cask "homebrew-app" do
  version "0.6.0"
  sha256 "07892b0cc2023182111fe0d993f0e9b2daf4c1ced9c8f49283dec2617b51da92"

  url "https://github.com/Homebrew/BrewUI/releases/download/v#{version}/Homebrew-#{version}.zip"
  name "Homebrew"
  desc "Homebrew's official GUI"
  homepage "https://github.com/Homebrew/BrewUI"

  depends_on macos: :tahoe

  app "Homebrew.app"

  zap trash: [
    "~/Library/Application Support/sh.brew.app",
    "~/Library/Caches/sh.brew.app",
    "~/Library/HTTPStorages/sh.brew.app",
    "~/Library/Preferences/sh.brew.app.plist",
  ]
end
