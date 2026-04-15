cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.48.0"
  sha256 arm:   "962fdd451348b562b3fb514bbe6cafe3035a03cdafc76e504d8656f47290abf0",
         intel: "0943c37c9a04262d98a807ffc8b554cbd6b44b604e30411688e9e6e2d72d25b6"

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
