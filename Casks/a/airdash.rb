cask "airdash" do
  version "2.0.155"
  sha256 "2a71c165ea8e5ddacc790730d2d87df64e66f9fb64d8ed88e2f69187d84d7913"

  url "https://github.com/simonbengtsson/airdash/releases/download/v#{version}/airdash.dmg",
      verified: "github.com/simonbengtsson/airdash/"
  name "AirDash"
  desc "Transfer photos and files to any device"
  homepage "https://airdash-project.web.app/"

  depends_on macos: ">= :big_sur"

  app "AirDash.app"

  zap trash: [
    "~/Library/Application Scripts/io.flown.airdashn",
    "~/Library/Containers/io.flown.airdashn",
  ]
end
