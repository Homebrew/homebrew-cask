cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.28.0"
  sha256 arm:   "07b44459b60db4da204455b3d70c573a945a4e5b02cbc8210333a02fc69f25fc",
         intel: "fb427873ed6a779cdebc63e1efa53d8c76cd8bdc3d0b71f1fc7ed4101c8c6f3c"

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
