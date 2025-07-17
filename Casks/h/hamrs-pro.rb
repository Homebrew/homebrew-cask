cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.42.1"
  sha256 arm:   "c7f87128b09599ee65ee5a3b444cbc123101b2dad603dbb20b6b00f35d5e38f9",
         intel: "9f5c031dba3c511219108cc9c7a3bbcc69c7fd1b4c8fbe65b5722633743542f2"

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
