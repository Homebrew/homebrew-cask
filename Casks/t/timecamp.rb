cask "timecamp" do
  version "1.8.0.0"
  sha256 "4989d37fc2805d67245111ec725bc0a69e2b5af2b39895fc296ed439e74e6dfa"

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
