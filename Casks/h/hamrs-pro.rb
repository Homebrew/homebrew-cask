cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.41.1"
  sha256 arm:   "fb331717ca7f29c26b31b785176b872c1a6a12652dccdf6b355043f3e8753c6d",
         intel: "908bf0d7c8ef642049a9d20bf5f8a44a92a6670f8d0ea16108dbc43bd824bcc0"

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
