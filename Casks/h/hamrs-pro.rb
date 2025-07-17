cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.42.0"
  sha256 arm:   "abe3aefba0f03784fb2c356f6fb54a0288698de26e4bbe611cab3cf32cd43cb4",
         intel: "a17fa0c859e2bca9951f5bf43b923c344346e7e4b3f6f3a3105c896f1f795780"

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
