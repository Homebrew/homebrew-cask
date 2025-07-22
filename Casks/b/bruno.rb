cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "ebb4fcc60e195fefa59dd5e7f9400c25a48ee0d424c20f08a296e6fb4fc8053b",
         intel: "609b8889a80ac63c4099b5b2d2e9a98e91f2eb0f62b60d887ed2f4530525bc95"

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
