cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.43.0"
  sha256 arm:   "0a701b806b202422dc287ec78b33a7708e761ba927f3e14432159947c14f3017",
         intel: "1b6bc2760b3cc06b19e441de3bc088fc1b72c6f6c102f1d3cea6e7ec89f11005"

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
