cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "19"
  sha256 arm:   "a73d7d25c450ef8e0d63744e1cabad412ab83651b18b4c1dc03f3d6c01fd051a",
         intel: "4a6ce8dd6d64e30023046e6b0e84af66d639dae908836db8dd4367ded9f65193"

  url "https://updater.grayjay.app/Apps/Grayjay.Desktop/#{version}/Grayjay.Desktop-osx-#{arch}-v#{version}.zip"
  name "Grayjay desktop"
  desc "Multi-platform video player"
  homepage "https://grayjay.app/desktop/"

  livecheck do
    url "https://updater.grayjay.app/Apps/Grayjay.Desktop/VersionLastMacOS.json"
    strategy :json, &:to_s
  end

  depends_on :macos

  app "Grayjay.app"

  zap trash: "~/Library/Application Support/Grayjay"
end
