cask "maciasl" do
  version "1.6.3"
  sha256 "44e80f8840573f0f1d612975a5e3dbe6bda2d949f2642994080a52037e7ad3a9"

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
