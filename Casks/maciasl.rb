cask "maciasl" do
  version "1.6.2"
  sha256 "2869fccc122e4b4cc115a3c9ff00cc96febfa8b7198bb98c1520467b84f69643"

  url "https://github.com/acidanthera/MaciASL/releases/download/#{version}/MaciASL-#{version}-RELEASE.dmg"
  name "MaciASL"
  desc "ACPI Machine Language (AML) compiler and IDE"
  homepage "https://github.com/acidanthera/MaciASL"

  app "MaciASL.app"
  binary "#{appdir}/MaciASL.app/Contents/MacOS/iasl-stable", target: "iasl"
end
