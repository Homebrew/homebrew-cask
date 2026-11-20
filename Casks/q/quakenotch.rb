cask "quakenotch" do
  version "4.1.3"
  sha256 "0781ceac0e39e9c0ea1947b62bdf4d63b1600e835b9310ea8d661b9fb7b62151"

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
