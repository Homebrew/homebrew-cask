cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.37.1"
  sha256 arm:   "1e2fede5285f854170d1a1336f65c884e229a57834e2a9eaf2d9772ca347dea4",
         intel: "81e8f26285bb55c47420b0ff3d2c05182dadccb8a2476be312c12b0716ef277a"

  url "https://hamrs-dist.s3.amazonaws.com/hamrs-pro-#{version}-mac-#{arch}.dmg",
      verified: "hamrs-dist.s3.amazonaws.com/"
  name "HAMRS Pro"
  desc "Portable logger"
  homepage "https://hamrs.app/"

  livecheck do
    url "https://hamrs-dist.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "HAMRS Pro.app"

  zap trash: [
    "~/Library/Application Support/hamrs-pro",
    "~/Library/Logs/hamrs-pro",
  ]
end
