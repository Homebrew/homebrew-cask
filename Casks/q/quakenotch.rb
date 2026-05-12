cask "quakenotch" do
  version "3.2"
  sha256 "9e60c113102e6e086a6a6c3cd778d9fce137427ba895d35717084d0ab532e519"

  url "https://github.com/rohanrhu/QuakeNotch/releases/download/v#{version}/QuakeNotch.zip",
      verified: "github.com/rohanrhu/QuakeNotch/"
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
  ]
end
