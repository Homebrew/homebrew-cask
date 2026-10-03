cask "quakenotch" do
  version "4.0"
  sha256 "166a337a591c756a6647687354c45110f8a8e84f87d37b1a22f85b50992ef765"

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
