cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.38.1"
  sha256 arm:   "a49edfcad6a92c891c40ddd1a052f26ca7b40de5b37b5532187476c2fbbe512f",
         intel: "aad145333fad42f982232d7ed40065903302e03e4e0e136cf35d164c462a922a"

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
