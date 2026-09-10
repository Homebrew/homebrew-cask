cask "homebrew-app" do
  version "0.3.1"
  sha256 "26f9a0e605225f8a29929da44d3988905a2cda500244277ab2d07a540f09c569"

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
