cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.33.0"
  sha256 arm:   "1f8eb3e15f65a3e9ffa59ce76bb288898c5006a4e56542e2b50ac51043050efa",
         intel: "2adad7178ec0c150145d89355aed9a28c4d710dbfbabd2416fce8ecbe5074186"

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
