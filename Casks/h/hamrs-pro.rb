cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.37.0"
  sha256 arm:   "c72846ac5443e0b55df5908cebdad0beefae7f5334c9d0bf6e3fbe1062bac69c",
         intel: "7eb0e4a2348913876f1d7fe41b00e9df01f97b4779f7c887ca473751cae43a9a"

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
