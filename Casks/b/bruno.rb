cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.14.2"
  sha256 arm:   "f7315e00c6473686e07adea020f10c66b2d5d57126e01033731ad960ee63df4b",
         intel: "347fd74935c1150ef242436532f876b21907aec0550a5d7c980a973e1db289d5"

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
