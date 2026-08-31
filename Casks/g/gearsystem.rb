cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.17"
  sha256 arm:   "78fcba3110ba467a87f992b602d91a234b2ff7d8821d21579155bed94aa9ac2b",
         intel: "a8510b03a2478b96df1b93d9b0e53b6004524bdc2950ff8f664f38fb13f001bb"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  uninstall quit: "com.drhelius.Gearsystem"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
