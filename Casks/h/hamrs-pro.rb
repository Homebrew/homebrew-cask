cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.45.0"
  sha256 arm:   "d3b684e68096e923850261718a9fba4d613f4f8093a797bcca585e1513e9bf9a",
         intel: "74ed9f91044f314be7d1de926929ffcae41bdd46f3d76a098e41cd9139373075"

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
