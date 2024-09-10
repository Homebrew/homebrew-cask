cask "airdash" do
  version "2.0.158"
  sha256 "990a683d6200fe595da3963bbcb0ec806d7f4d755a1ec73bd1ae21e50a5079fd"

  url "https://github.com/simonbengtsson/airdash/releases/download/v#{version}/airdash.dmg",
      verified: "github.com/simonbengtsson/airdash/"
  name "AirDash"
  desc "Transfer photos and files to any device"
  homepage "https://airdash-project.web.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AirDash#{version.patch}.app"

  zap trash: [
    "~/Library/Application Scripts/io.flown.airdashn",
    "~/Library/Containers/io.flown.airdashn",
  ]
end
