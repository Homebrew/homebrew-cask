cask "maciasl" do
  version "1.6.1"
  sha256 "9ba67e2b2f66383ceea6ddf57d9408150e70a4cff58fa9c5806c80772370fdc8"

  url "https://github.com/acidanthera/MaciASL/releases/download/#{version}/MaciASL-#{version}-RELEASE.dmg"
  name "MaciASL"
  desc "ACPI Machine Language (AML) compiler and IDE"
  homepage "https://github.com/acidanthera/MaciASL"

  app "MaciASL.app"
  binary "#{appdir}/MaciASL.app/Contents/MacOS/iasl-stable", target: "iasl"
end
