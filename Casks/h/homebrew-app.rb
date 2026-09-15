cask "homebrew-app" do
  version "0.4.1"
  sha256 "71f1d99e4db0c40fff102adc0309ea6f9c3c555e913c2afda3df8d0bb561ba8f"

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
