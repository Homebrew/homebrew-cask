cask "quakenotch" do
  version "4.1.1"
  sha256 "4a41a50088d6dcf85bd2d6151a02249b86783aad6a9a1a3cff65edb16ea25a62"

  url "https://github.com/rohanrhu/QuakeNotch/releases/download/v#{version}/QuakeNotch.zip"
  name "QuakeNotch"
  desc "MacBook Notch utility"
  homepage "https://quakenotch.com/"

  auto_updates true
  depends_on macos: :sonoma

  app "QuakeNotch.app"

  zap trash: [
    "~/Library/Application Support/MeowingCat.QuakeNotch",
    "~/Library/Caches/MeowingCat.QuakeNotch",
    "~/Library/HTTPStorages/MeowingCat.QuakeNotch",
    "~/Library/Preferences/MeowingCat.QuakeNotch.plist",
  ]
end
