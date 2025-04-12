cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.35.1"
  sha256 arm:   "22540be42e9cd1f69ae9ee85d8a3d3bdbfa74d2c7737199c9fa7f1bf96ae250f",
         intel: "e90924d9bfec531dbb88faf00af9e21b8deaff4a118bd737038ba40d2d292186"

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
