cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.44.0"
  sha256 arm:   "244d45eaa1ce98619c7eaea5369881afa8682b450fcb94bf5733a386fb23829e",
         intel: "0cdd8095cd9d31e372af456d5f3c1de016a6b597affa01c17ac7f9a21339c26d"

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
