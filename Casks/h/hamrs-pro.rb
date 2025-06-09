cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.39.0"
  sha256 arm:   "c59a82d1e9c6fdbecb484f0ece15563d1d51cf9d208da0160f14fa50574edd67",
         intel: "953864e4346f6bddff2317c27ebddfdd529409a2e7ac01fb2ff235041734c211"

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
