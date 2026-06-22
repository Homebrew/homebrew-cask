cask "flow5" do
  version "7.57"
  sha256 "f39b23e9fca651c3200f8a8d75eaffbf37d7727c9124a992e261cd660178d548"

  url "https://github.com/techwinder/flow5/releases/download/v#{version}/flow5_v#{version}.dmg",
      verified: "github.com/techwinder/flow5/"
  name "flow5"
  desc "Potential flow solver for preliminary aerodynamic and hydrofoil design"
  homepage "https://flow5.tech/flow5.html"

  depends_on :macos

  app "flow5.app"

  zap trash: "~/Library/Preferences/tech.cere-aero.flow5.plist"
end
