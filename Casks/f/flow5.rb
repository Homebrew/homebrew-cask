cask "flow5" do
  version "7.56"
  sha256 "a3c21f6451f393310287fe76e24ff6ff301f6d694a82509e5344007d6e07d4d9"

  url "https://github.com/techwinder/flow5/releases/download/v#{version}/flow5_v#{version}.dmg",
      verified: "github.com/techwinder/flow5/"
  name "flow5"
  desc "Potential flow solver for preliminary aerodynamic and hydrofoil design"
  homepage "https://flow5.tech/flow5.html"

  depends_on :macos

  app "flow5.app"

  zap trash: "~/Library/Preferences/tech.cere-aero.flow5.plist"
end
