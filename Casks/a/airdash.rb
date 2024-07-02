cask "airdash" do
  version "2.0.155"
  sha256 "38c96e57d824479904fb9866d04f42c2179ac3c8f2cc85a7194b7ad914b4d376"

  url "https://github.com/simonbengtsson/airdash/releases/download/v#{version}/airdash.dmg",
      verified: "github.com/simonbengtsson/airdash/"
  name "AirDash"
  desc "Transfer photos and files to any device"
  homepage "https://airdash-project.web.app/"

  depends_on macos: ">= :big_sur"

  app "AirDash#{version.patch}.app"

  zap trash: [
    "~/Library/Application Scripts/io.flown.airdashn",
    "~/Library/Containers/io.flown.airdashn",
  ]
end
