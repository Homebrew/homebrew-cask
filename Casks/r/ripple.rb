cask "ripple" do
  version "2.3.3"
  sha256 :no_check

  url "https://github.com/TopMyster/Ripple/releases/download/v#{version}/Ripple-#{version}-arm64.dmg"
  name "Ripple"
  desc "Dynamic Island for All"
  homepage "https://github.com/TopMyster/Ripple"

  app "Ripple.app"

  zap trash: [
    "~/Library/Application Support/Ripple",
    "~/Library/Preferences/com.topmyster.ripple.plist",
  ]
end
