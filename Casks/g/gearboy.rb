cask "gearboy" do
  arch arm: "arm", intel: "intel"

  version "3.6.1"
  sha256 arm:   "6b46d00e4780bbbfc28c67e1f2706b42ff344fb1bac9741203d093171b7b8e9a",
         intel: "f9e685bced1b6d978d5554d4bec9594b88f663f39fe21fc1c8c5424801eb764f"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-macos-#{arch}.zip"
  name "Gearboy"
  desc "Game Boy and Game Boy Color emulator"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  container nested: "Gearboy.app.zip"

  app "Gearboy.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
