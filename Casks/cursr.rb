cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.4.11"
  sha256 arm:   "4552ea31b58f2b370c8891aae4bbf164095ddef1cffcc2507440fe0c331dcaed",
         intel: "5ed9db1eeee7697741c061333b344006190d83264e5bb2dd6096b35438c913ee"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customize mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
