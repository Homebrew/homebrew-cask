cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.36.0"
  sha256 arm:   "a4eb5d84dec0de5b68fe3d2f49eba4aeab496a77ceaee79162d9923e7051138f",
         intel: "d9b8217a81b7b3bf9f5bb6ebd29a97c63ad25599c81331b7d70be7fd74e4e023"

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
