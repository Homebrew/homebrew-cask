cask "timecamp" do
  version "1.8.0.0"
  sha256 "2bba2a29157f4f18802296ad4807db001bb2f06f7a66b831254049615086623e"

  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg",
      verified: "timecamp.s3.amazonaws.com/"
  name "TimeCamp"
  desc "Client application for TimeCamp software - track time and change tasks"
  homepage "https://www.timecamp.com/"

  livecheck do
    url "https://app.timecamp.com/download/stable/macos"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "TimeCamp.app"

  zap rmdir: "~/Library/Application Support/TimeCamp"

  caveats do
    requires_rosetta
  end
end
