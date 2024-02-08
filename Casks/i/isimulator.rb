cask "isimulator" do
  version "3.3.0"
  sha256 "b9d4e1b3726ff3dd222f123a6d0b425015ff13733e95863a95d8256f80530a60"

  url "https://github.com/wigl/iSimulator/releases/download/#{version}/iSimulator.zip"
  name "iSimulator"
  desc "Utility to control and manage the Simulator"
  homepage "https://github.com/wigl/iSimulator"

  depends_on macos: ">= :catalina"

  app "iSimulator.app"

  zap delete: [
    "~/Library/Application Support/niels.jin.iSimulator",
    "~/Library/Caches/niels.jin.iSimulator",
    "~/Library/Preferences/niels.jin.iSimulator.plist",
  ]
end
