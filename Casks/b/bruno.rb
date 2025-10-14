cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.13.0"
  sha256 arm:   "1f777296f04046410e941362726b9c95286347f8e96f0fa17cdaa007cf13357c",
         intel: "c00b764293d98755e615f898d5af99bf3c5baef059d6a987def1c79940e339a7"

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
