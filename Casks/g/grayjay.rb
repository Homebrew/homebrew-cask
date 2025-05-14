cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "7"
  sha256 arm:   "8badb586d4225844b3763125cf6eb1d2a5b56d52633142028c47c1db75375d1c",
         intel: "9f879fe85f9fd5f12a20f6bc8c4f14d34f5121d1bbc1fffc55b22a522b559d53"

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
