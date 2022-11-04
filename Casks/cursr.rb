cask "cursr" do
  arch arm: "mac-arm64", intel: "mac-x64"
  version "1.4.11"
  sha256 arm: "4552ea31b58f2b370c8891aae4bbf164095ddef1cffcc2507440fe0c331dcaed",
         intel: "5ed9db1eeee7697741c061333b344006190d83264e5bb2dd6096b35438c913ee"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-#{arch}.dmg",
    verified: "github.com/bitgapp/Cursr/"
  name "Cursr.app"
  desc "Customize mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url "https://github.com/bitgapp/Cursr/releases"
    strategy :github_latest
  end

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
  ]
end
