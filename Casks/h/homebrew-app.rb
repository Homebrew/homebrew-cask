cask "homebrew-app" do
  version "0.4.3"
  sha256 "831b525a2531888572086f406db270e7540ac1c1450c465ffff4b3b2d1965a42"

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
