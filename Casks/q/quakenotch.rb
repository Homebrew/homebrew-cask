cask "quakenotch" do
  version "1.2.1"
  sha256 "365f98885d4cf85084499ae3da753b96b8ad7145ead53b3f7a4f81930dc35c75"

  url "https://github.com/rohanrhu/QuakeNotch/releases/download/v#{version}/QuakeNotch.zip",
      verified: "github.com/rohanrhu/QuakeNotch/"
  name "QuakeNotch"
  desc "MacBook Notch utility"
  homepage "https://quakenotch.com/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "QuakeNotch.app"

  zap trash: [
    "~/Library/Caches/MeowingCat.QuakeNotch",
    "~/Library/HTTPStorages/MeowingCat.QuakeNotch/",
  ]
end
