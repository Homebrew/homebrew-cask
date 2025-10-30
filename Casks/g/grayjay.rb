cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "12"
  sha256 arm:   "18a32d7517b96c3ad0d3199923e12deaaad420e32003db84499c196d134eaab2",
         intel: "91694b37c5b8bd3f8f634cd631e2a2b055181d8f77b75fb18e108298bfdc7e9c"

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
