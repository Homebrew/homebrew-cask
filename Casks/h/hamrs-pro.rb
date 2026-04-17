cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.48.1"
  sha256 arm:   "22d803b10b599ef3db892f8b95075d1607ea82c6875c97904e92c7a1d1d4a165",
         intel: "470c5675dd0809a0ff639d0ad8d95c63fbda1595ea0d328d2aae28c8c651ae39"

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
