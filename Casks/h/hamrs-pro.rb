cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.45.0"
  sha256 arm:   "963441d97aa221697fb88022ef8178ff143ca8f9cf97c22b8aed2bc1ef495cb0",
         intel: "fff762001b1ff36920e6ee4d8d3eabe6ca28f9d03131ee503462dd0c050927ac"

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
  depends_on macos: ">= :big_sur"

  app "HAMRS Pro.app"

  zap trash: [
    "~/Library/Application Support/hamrs-pro",
    "~/Library/Logs/hamrs-pro",
  ]
end
