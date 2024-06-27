cask "airdash" do
  version "2.0.155"
  sha256 "ae1a35955982b34c11bc945c7d1325dbc7e18b6e5e83ff6db5d0fb6a9c9039d9"

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
