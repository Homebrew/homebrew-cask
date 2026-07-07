cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.52.0"
  sha256 arm:   "33c268849918d54e4d4070a2320f36a4f8521ff6dfd476a1fbd8f27bd3fc1331",
         intel: "1d01acff971cd36fb516977aa02efba1ffbd61e8cf97908f1be6508e087789d2"

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
  depends_on macos: :big_sur

  app "HAMRS Pro.app"

  zap trash: [
    "~/Library/Application Support/hamrs-pro",
    "~/Library/Logs/hamrs-pro",
  ]
end
