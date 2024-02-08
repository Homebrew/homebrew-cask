cask "maciasl" do
  version "1.6.4"
  sha256 "1a4885e9a1dbd66c38f68c5c471b2024f9e085db10bfbe0e7e1e5e32ed32790d"

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
