cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.50.0"
  sha256 arm:   "6d1f269f31a17cec442866624a4ce00faeec32544bc96aa8baa835ed5df7504f",
         intel: "f8238f12245a78fb8b5c6861c31141e40154865a7e5bab6a0bdb31c7e7b36df0"

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
