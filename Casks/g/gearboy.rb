cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.8"
  sha256 arm:   "a7b50644c5567704c67296011e770d5ed2f6bade7d59d54a9ca421c0da025e15",
         intel: "81ac328612872506cc613a5c5ac1b792307362f6584862575a5a82fb6861a968"

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

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
