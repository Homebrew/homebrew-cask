cask "switchkey" do
  version "1.1.2"
  sha256 "eb282d63c3c9d779e3ea74fb009b1273b814ba1aea2077681274a29a317cffe3"

  url "https://github.com/itsuhane/SwitchKey/releases/download/v#{version}/SwitchKey.zip"
  appcast "https://github.com/itsuhane/SwitchKey/releases.atom"
  name "SwitchKey"
  homepage "https://github.com/itsuhane/SwitchKey"

  app "SwitchKey.app"

  zap trash: "~/Library/Preferences/itsuhane.tools.SwitchKey.plist"
end
