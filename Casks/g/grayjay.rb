cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "16"
  sha256 arm:   "109cdc4dd44c17e34e33da35340c64f3f7e9d0e7a7bad616af8ba6766069d310",
         intel: "3dfb558f161b844fe01e33e9dd00680c7d4c9556d78911e2a5326f4e87000db9"

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
