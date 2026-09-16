cask "homebrew-app" do
  version "0.4.2"
  sha256 "54bbbfe849256b7e4747379510a20c6badf8df43818d60b83feb630a55ed8c91"

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
