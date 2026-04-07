cask "quakenotch" do
  version "3.0.2"
  sha256 "8dfed9099a8632103a5ee90fc19ef16701e90f5bdb47c304c1e2c026b50d78a9"

  url "https://github.com/rohanrhu/QuakeNotch/releases/download/v.#{version}/QuakeNotch.zip",
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
