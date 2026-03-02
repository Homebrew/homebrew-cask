cask "hamrs-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.47.1"
  sha256 arm:   "ffd51a985c4427d364b3082c23c99c7e17abf6716956de55934418169457441e",
         intel: "05ba1761d293d74f92046865c56e6dd733d9fb404c0b58148f04e591053efc19"

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
