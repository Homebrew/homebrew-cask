cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.14.0"
  sha256 arm:   "694a2ca04cb112b1429e436191b1f0c083dfbeb725ff9b149b95e15f1d2e76e3",
         intel: "3c11674e508a5def7081a0ec2951839756c21e91e3df0de7b56cafbf092a9782"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
