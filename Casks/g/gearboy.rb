cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.2"
  sha256 arm:   "3c850054955f207074d458ff3548e63f310a1818d3e539877ee34718a600f0d0",
         intel: "270f6d23019583b922becf3a334c9d17c4baa34bb92c086b6c5f62a75e4d01f1"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-desktop-macos-#{arch}.zip"
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
