cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "20"
  sha256 arm:   "aef951b755973ab7bedc2d94dd73830726df184ce58d1150586c6d8f360d2270",
         intel: "3a274a52cb81c298102f6d9b70f7f642bb822e4ac9c32235c419bc9b1ceeea6b"

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
