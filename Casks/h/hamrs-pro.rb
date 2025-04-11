cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.35.0"
  sha256 arm:   "44a737df437bf7c5df232fb1814211cc35728c3a317252790c07f855709007e0",
         intel: "1363a91a80531abae539a3983685f7135d9bc8585b5a5d34ed36046867f1b7ee"

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
