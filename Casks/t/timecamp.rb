cask "timecamp" do
  version "1.7.2.0"
  sha256 "165045e6170fd17a8ef77bd3d75318594dd687b5f51255e5c63c318ab9250cfd"

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

  caveats do
    requires_rosetta
  end
end
