cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.9"
  sha256 arm:   "3850af1d26e68dd0fa588dfab764332dccd16ce6731a2401a34821f389cc409c",
         intel: "dd6a23cd623abfc442ac19404746e150ab2b647a130ac6e142676c2f9364b756"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System, Game Gear and SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  depends_on :macos
  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearsystem.savedState"
end
