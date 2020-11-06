cask "flycut" do
  version "1.9.4"
  sha256 "7e9878ffefb21dc974fb39de3e2b49791fcda9149a758d2d467b5a9207ec4863"

  url "https://github.com/TermiT/Flycut/releases/download/#{version}/Flycut.#{version}.zip"
  appcast "https://github.com/TermiT/Flycut/releases.atom"
  name "Flycut"
  desc "Clipboard manager for developers"
  homepage "https://github.com/TermiT/Flycut"

  app "Flycut.app"

  zap trash: "~/Library/Preferences/com.generalarcade.flycut.plist"
end
