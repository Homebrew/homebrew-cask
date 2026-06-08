cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.49.0"
  sha256 arm:   "1d9c65b9633867bf94c89ab6bfc60ca77b4035d9eef6bfdab64640ffc4ed1902",
         intel: "c569c6913c778c3dfa8c2482956a7336abd3e81b1371615f2a0903d0f21d0b56"

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
