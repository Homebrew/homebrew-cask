cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "17"
  sha256 arm:   "d19c6a57cd925424a92806d96796ab1a031b7e9ae9deaa312fe411a5b3d456aa",
         intel: "14986dbe9a712a442351750778d50420d8c5d6d08200553667564961cdd3f757"

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
