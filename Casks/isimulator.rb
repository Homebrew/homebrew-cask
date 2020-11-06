cask "isimulator" do
  version "3.2.2"
  sha256 "d5e4404ac404aa39a4c44486bbbfe60ff6d90c371f5e4944fb8ff7cc09e1b30a"

  url "https://github.com/wigl/iSimulator/releases/download/#{version}/iSimulator.zip"
  appcast "https://github.com/wigl/iSimulator/releases.atom"
  name "iSimulator"
  desc "Utility to control and manage the Simulator"
  homepage "https://github.com/wigl/iSimulator"

  app "iSimulator.app"

  zap delete: [
    "~/Library/Application Support/niels.jin.iSimulator",
    "~/Library/Caches/niels.jin.iSimulator",
    "~/Library/Preferences/niels.jin.iSimulator.plist",
  ]
end
