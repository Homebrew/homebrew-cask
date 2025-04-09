cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.34.2"
  sha256 arm:   "4ca66dc37159002be22b85b54de7e9a9a4389128f430b9b73889bcac2f56f26f",
         intel: "0999a36d232ca9e9c605dcc90a88dd8cd02fd7516e053641d906194edb078edc"

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
