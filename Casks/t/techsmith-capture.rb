cask "techsmith-capture" do
  version "1.3.31"
  sha256 :no_check

  url "https://cdn.cloud.techsmith.com/techsmithcapture/mac/TechSmithCapture.dmg"
  name "TechSmith Capture"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/jing-tool.html"

  livecheck do
    url "https://assets.techsmith.com/techsmithcapture/mac/TechSmithCaptureAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TechSmith Capture.app"
end
