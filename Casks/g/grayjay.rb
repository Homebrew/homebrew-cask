cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "5"
  sha256 arm:   "f1081576dcea0cd4f057ebec824f73681a787b9b6a0f13e61ce1b3e58d265a31",
         intel: "530c469bcd59b446857404cbb332ac2e96cda0d3b90b8d5d085236dbb8a78eff"

  url "https://updater.grayjay.app/Apps/Grayjay.Desktop/#{version}/Grayjay.Desktop-osx-#{arch}-v#{version}.zip"
  name "Grayjay desktop"
  desc "Multi-platform video player"
  homepage "https://grayjay.app/desktop/"

  livecheck do
    url "https://updater.grayjay.app/Apps/Grayjay.Desktop/VersionLastMacOS.json"
    strategy :json, &:to_s
  end

  app "Grayjay.app"

  zap trash: "~/Library/Application Support/Grayjay"
end
