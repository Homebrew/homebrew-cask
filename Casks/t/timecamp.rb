cask "timecamp" do
  version "1.8.4.0"
  sha256 "6b883f60641ef6d1dfa1dae03f27ad0fa640b5ef2dc36c64c715ead337ae439e"

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
