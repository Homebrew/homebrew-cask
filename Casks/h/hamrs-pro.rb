cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.47.0"
  sha256 arm:   "317cf977519e5dea0e1b6f45c5e7171ae9d217045255b15fd5da33b00853cc4d",
         intel: "fed11a45fbe2586c6f48ffd3b11dd939adc514eab1755daec218354cd4ac4f15"

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
