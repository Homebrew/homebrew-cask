cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.40.0"
  sha256 arm:   "58e5888de42d386c296bfbd1f27fe2af3538f750b9b1bd1550a9f5bc1724a6fb",
         intel: "c200977fabd3599b654636422586f9c58b9693b6e9aa2083c55093591d804b17"

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
