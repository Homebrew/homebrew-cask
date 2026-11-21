cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.22"
  sha256 arm:   "67bac5e9147aaa2a0e6e73d0304816b2330d0bcece0b132041a774d55008ad9d",
         intel: "e66c6622a8f39edf6ea9f249e52f81f468c2fd49d0aa0231497a62d1e45d39e1"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-desktop-macos-#{arch}.zip"
  name "Gearboy"
  desc "Game Boy and Game Boy Color emulator"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  container nested: "Gearboy.app.zip"

  app "Gearboy.app"

  uninstall quit: "com.drhelius.Gearboy"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
