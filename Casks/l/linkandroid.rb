cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "0c010350cb0dba1883b06d9315531e6c9aecc681a4e068a17893448f4e9ea8e9",
         intel: "6c44433d934d0897f1d4a3fef847e59a03d963f5690dd53a6197f5eb9ebd7e53"

  url "https://github.com/modstart-lib/linkandroid/releases/download/v#{version}/LinkAndroid-#{version}-mac-#{arch}.dmg"
  name "LinkAndroid"
  desc "Open source android assistant"
  homepage "https://linkandroid.com/"

  depends_on :macos

  app "LinkAndroid.app"

  zap trash: [
    "~/Library/Application Support/linkandroid",
    "~/Library/Preferences/LinkAndroid.plist",
    "~/Library/Saved Application State/LinkAndroid.savedState",
  ]
end
