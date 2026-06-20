cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.10"
  sha256 arm:   "216e3db752aa943b851f2fe8ea931154e632be87d9e7134d19df4d746712f0c9",
         intel: "8e65c127f5ac1052f41da5b683f4c474b8945120a9d457ca3d4a82a12fc62361"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
