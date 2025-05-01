cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.36.2"
  sha256 arm:   "66050aeae7dd09b14d9a333fd8a6fb63566c0f3c53d5f6d917e941d9d0bd4b6c",
         intel: "d83efa98d557345349d647146f3af10c060037a103034c493c39e99041391187"

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
