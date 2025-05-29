cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.38.0"
  sha256 arm:   "b3c2f2d54601cb4133502294089c71d4f7315507b68247ae5c3b9daa74ae6231",
         intel: "8205a707941c24cf5bb0ecb255ef5d4af394eb786bf2179641313a9dc3e0ae25"

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
