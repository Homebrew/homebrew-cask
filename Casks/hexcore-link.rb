cask "hexcore-link" do
  version "2.0.23"
  sha256 "3efed27f21caa302e6553d05af979b3974080c9ead597ab792966d18e9e7741f"

  url "https://s5.hexcore.xyz/releases/software/hexcore-link/darwin/x64/HexcoreLink_#{version}_x64.dmg"
  name "hexcore-link"
  desc "Configuration software for the Anne series and Tenet 70"
  homepage "https://www.hexcore.xyz/hexcore-link"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/HexcoreLink_(\d+(?:\.\d+)*)_x64\.dmg}i)
  end

  app "Hexcore Link.app"

  zap trash: [
    "~/Library/Application Support/hexcore-link",
    "~/Library/Preferences/xyz.hexcore.hexcore-link.plist",
    "~/Library/Saved Application State/xyz.hexcore.hexcore-link.savedState",
  ]
end
