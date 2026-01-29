cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "14"
  sha256 arm:   "1b379f50da77e56ed87b22fd0e67feec41000e700b03f4769766d079af54637f",
         intel: "22177745b2c04127f93606a5ea7705c3b8abd7a3796771cd051a434e4e3283e4"

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
