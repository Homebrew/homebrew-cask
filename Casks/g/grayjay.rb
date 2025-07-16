cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "9"
  sha256 arm:   "ba346f39bcf569a7ae2eff82e6927e9469b724b0860a37d978e65aab1e5b8dcf",
         intel: "8fd45d2df70f4806aba404527c70e6189a8a17578ac53cf1199af2e08a0843cb"

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
