cask "timecamp" do
  version "1.8.4.0"
  sha256 "93005f0778689dcd5a40e8c6b928177037fbcfa811d7aaa30bf2a91827f8ec52"

  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg",
      verified: "timecamp.s3.amazonaws.com/"
  name "TimeCamp"
  desc "Client application for TimeCamp software - track time and change tasks"
  homepage "https://www.timecamp.com/"

  livecheck do
    url "https://app.timecamp.com/download/stable/macos"
    strategy :header_match
  end

  app "TimeCamp.app"

  zap rmdir: "~/Library/Application Support/TimeCamp"
end
