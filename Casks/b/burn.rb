cask "burn" do
  version "3.1.10"
  sha256 "7278e5f48d939fc9959ba3581053b8880b0a6924254c261127396421e054ae59"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  depends_on :macos

  app "Burn.localized/Burn.app"

  zap trash: "~/Library/Preferences/com.kiwifruitware.Burn.plist"
end
