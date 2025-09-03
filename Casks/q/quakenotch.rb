cask "quakenotch" do
  version "1.4.2"
  sha256 "f93a01f529a4a2c432571f9bc15e2d0d2e484b24082fed911c9865140aedcd13"

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
