cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.4.4"
  sha256 arm:   "73b4058d1b872e439f0511025a0233c3dadf3173d161b2fb19cf27eaee3311fc",
         intel: "2bfddbcbe2c192d4b6f87c4d93e79bdc5feafa28251fac152b2c3dd21b5f10e0"

  url "https://github.com/wixplosives/codux-versions/releases/download/#{version}/Codux-#{version}.#{arch}.dmg",
      verified: "github.com/wixplosives/codux-versions/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash:
             [
               "~/Library/Application Support/Codux",
               "~/Library/Preferences/com.wixc3.wcs.plist",
               "~/Library/Saved Application State/com.wixc3.wcs.savedState",
             ]
end
