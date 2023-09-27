cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.15.3"
  sha256 arm:   "bd0325b69133ae28b35bd1915ba31a28fe965056d247cb245a4df5242894ccd1",
         intel: "995e02f956dd64e24caec3167067e33bf99b3e4e8af45927ee701d42db392c88"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
