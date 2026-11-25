cask "flow5" do
  version "7.58"
  sha256 "a248d8840c4c87780a256144907504082559b33c65869cf99b5c2e8db52e0667"

  url "https://github.com/techwinder/flow5/releases/download/v#{version}/flow5_v#{version}.dmg"
  name "flow5"
  desc "Potential flow solver for preliminary aerodynamic and hydrofoil design"
  homepage "https://flow5.tech/flow5.html"

  depends_on :macos

  app "flow5.app"

  zap trash: "~/Library/Preferences/tech.cere-aero.flow5.plist"
end
