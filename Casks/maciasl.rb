cask "maciasl" do
  version "1.6.2"
  sha256 "2869fccc122e4b4cc115a3c9ff00cc96febfa8b7198bb98c1520467b84f69643"

  url "https://github.com/acidanthera/MaciASL/releases/download/#{version}/MaciASL-#{version}-RELEASE.dmg"
  name "MaciASL"
  desc "ACPI Machine Language (AML) compiler and IDE"
  homepage "https://github.com/acidanthera/MaciASL"

  auto_updates true

  app "MaciASL.app"
  binary "#{appdir}/MaciASL.app/Contents/MacOS/iasl-stable", target: "iasl"

  uninstall quit: "org.acidanthera.MaciASL"

  zap trash: [
    "~/Library/Preferences/org.acidanthera.MaciASL.plist",
    "~/Library/Saved Application State/org.acidanthera.MaciASL.savedState",
  ]
end
