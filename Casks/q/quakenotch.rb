cask "quakenotch" do
  version "3.3.2"
  sha256 "070185185f3f688d9c645cabc640018b98d47bb4f203ccb94b818b365a8714dd"

  url "https://github.com/rohanrhu/QuakeNotch/releases/download/v#{version}/QuakeNotch.zip"
  name "QuakeNotch"
  desc "MacBook Notch utility"
  homepage "https://quakenotch.com/"

  auto_updates true
  depends_on macos: :sonoma

  app "QuakeNotch.app"

  uninstall quit: "com.apple.Music"

  zap trash: [
    "~/Library/Application Support/MeowingCat.QuakeNotch",
    "~/Library/Caches/MeowingCat.QuakeNotch",
    "~/Library/HTTPStorages/MeowingCat.QuakeNotch",
  ]
end
