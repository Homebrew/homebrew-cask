cask "maciasl" do
  version "1.5.8"
  sha256 "cd2a4bb2311316f66a08b937b7ef3c9928d8c19f8a53d87759e123535bed876e"

  url "https://github.com/acidanthera/MaciASL/releases/download/#{version}/MaciASL-#{version}-RELEASE.zip"
  appcast "https://github.com/acidanthera/MaciASL/releases.atom"
  name "MaciASL"
  homepage "https://github.com/acidanthera/MaciASL"

  app "MaciASL.app"
  binary "#{appdir}/MaciASL.app/Contents/MacOS/iasl-stable", target: "iasl"
end
