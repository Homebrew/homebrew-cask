cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.1.3"
  sha256 arm:   "e1d04779796b91c5ac641b142d4507e6e6446b8d76364024c69dd4852d69c189",
         intel: "8e1d5d117a421be2e4cec41263dd5953aa97d4b675c8ae3b253ea140612de211"

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
