cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.52.1"
  sha256 arm:   "a27f30dde6867c17c5a4079e071da7509d86cad5476d8028742aa0d95084d751",
         intel: "1180b8c24091193b6b6aca4c763ec35acaaaf87b3d88c72608d507baa5e5ac4a"

  url "https://hamrs-dist.s3.amazonaws.com/hamrs-pro-#{version}-mac-#{arch}.dmg"
  name "HAMRS Pro"
  desc "Portable logger"
  homepage "https://hamrs.app/"

  livecheck do
    url "https://hamrs-dist.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "HAMRS Pro.app"

  uninstall quit: "app.hamrs.pro"

  zap trash: [
    "~/Library/Application Support/hamrs-pro",
    "~/Library/Logs/hamrs-pro",
  ]
end
