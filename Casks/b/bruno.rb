cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "16ad1c80a49c9414e9cfcea327eb693bdfe6c1447669316be22190e16344462c",
         intel: "ea9088c70b527b7b979b037adb4bc8491dfd75089ea418f2d3abc118f420dcc6"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
