cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "10"
  sha256 arm:   "3491491e37725beeb48c33a4bdeb4f3cd5240ee5066e28d0e1dd7e55f5d76570",
         intel: "debea9d4d96152eedfc2602a5b197afa8ca88d09e991d27c3b2efffb36992f5d"

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
