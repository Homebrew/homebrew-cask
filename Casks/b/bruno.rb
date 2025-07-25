cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.8.1"
  sha256 arm:   "659835980d47ef29c45ce3d87636101f4972c04d9e3f55d352ecac53d5b7a025",
         intel: "483255aedcf35012b361df97139aadf9efefd814cdcbb27e812c2de9e049cb8d"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
