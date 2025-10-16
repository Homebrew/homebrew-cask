cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "11"
  sha256 arm:   "8f7eaa7c0ea6b9b988673f96fbb168160281e39d433e8611e8e0412e9b054aaf",
         intel: "6ee109a0aeeb824413c0e6d79e321ea809486514a0b3b576a0f53aa316ec838a"

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
