cask "remember-the-milk" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256 arm:   "571865136d7289e8ef6c59eb22a059a1b9caeb424655a07a35709e5900ec6a4f",
         intel: "311e64ebc79f725e1e20856b2c3c4f09a7de4e6e3b78afc670188e54d69ff929"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-#{arch}.zip"
  name "Remember The Milk"
  desc "To-do app"
  homepage "https://www.rememberthemilk.com/"

  livecheck do
    url "https://www.rememberthemilk.com/services/mac/"
    regex(%r{<b>Version:</b>\s*(\d+(?:\.\d+)+)}i)
  end

  app "Remember The Milk.app"

  zap trash: [
    "~/Library/Application Support/Remember The Milk",
    "~/Library/Caches/com.rememberthemilk.Deskmilk",
    "~/Library/Caches/com.rememberthemilk.Deskmilk.ShipIt",
    "~/Library/HTTPStorages/com.rememberthemilk.Deskmilk.binarycookies",
    "~/Library/Preferences/com.rememberthemilk.Deskmilk.plist",
    "~/Library/Saved Application State/com.rememberthemilk.Deskmilk.savedState",
  ]
end
