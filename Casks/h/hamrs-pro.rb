cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.34.1"
  sha256 arm:   "68ce4c088e6f5d05bbc8076496fc22ccef2a80cbedbc73bac392d161e24f3446",
         intel: "e9eb01a6976137c3468636192379ff98c2214501b3438865cd4d0fb6e9609837"

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
