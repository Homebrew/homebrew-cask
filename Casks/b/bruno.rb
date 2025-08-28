cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0"
  sha256 arm:   "6d71dcdaeb9fecccb6ac6123f43dc99fb242c1087a93eb9ac4baf06a3eacb24c",
         intel: "e9154b9aacae74135ecc48f972cbb69d415f410c88546a71a652d8796f593aff"

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
