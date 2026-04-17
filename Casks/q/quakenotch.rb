cask "quakenotch" do
  version "3.0.6"
  sha256 "985311dab867ec074dce830012b826483c999098295568c1573dd53feabd4116"

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
