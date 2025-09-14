cask "quakenotch" do
  version "1.5.1"
  sha256 "3f9876e927f6957b02131a1c19a8417dbc334e4c0beef3717636225f192a6ba3"

  url "https://github.com/rohanrhu/QuakeNotch/releases/download/v#{version}/QuakeNotch.zip",
      verified: "github.com/rohanrhu/QuakeNotch/"
  name "QuakeNotch"
  desc "MacBook Notch utility"
  homepage "https://quakenotch.com/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "QuakeNotch.app"

  zap trash: [
    "~/Library/Application Support/MeowingCat.QuakeNotch",
    "~/Library/Caches/MeowingCat.QuakeNotch",
    "~/Library/HTTPStorages/MeowingCat.QuakeNotch",
  ]
end
