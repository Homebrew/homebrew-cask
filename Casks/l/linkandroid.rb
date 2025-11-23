cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "3d985bbdb6dc93c8cad0d932a2fb626b9562100cc844068c0d2d3b9130307bee",
         intel: "4527069482590d4cde52345f4592bdfb8af184e88c1b14ed8b9386614721029b"

  url "https://github.com/modstart-lib/linkandroid/releases/download/v#{version}/LinkAndroid-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/linkandroid/"
  name "LinkAndroid"
  desc "Open source android assistant"
  homepage "https://linkandroid.com/"

  app "LinkAndroid.app"

  zap trash: [
    "~/Library/Application Support/linkandroid",
    "~/Library/Preferences/LinkAndroid.plist",
    "~/Library/Saved Application State/LinkAndroid.savedState",
  ]
end
