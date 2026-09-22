cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "3107388eb8057d7c18cbd3c0478128dd76d7b4eef7c943c64035a080c7a96320",
         intel: "9d99b161fdd388f33901fe736d80b2431872fe6ee126a42bf48d109db1b6ea8e"

  url "https://github.com/modstart-lib/linkandroid/releases/download/v#{version}/LinkAndroid-#{version}-mac-#{arch}.dmg"
  name "LinkAndroid"
  desc "Open source android assistant"
  homepage "https://linkandroid.com/"

  depends_on :macos

  app "LinkAndroid.app"

  uninstall quit: "LinkAndroid"

  zap trash: [
    "~/Library/Application Support/linkandroid",
    "~/Library/Preferences/LinkAndroid.plist",
    "~/Library/Saved Application State/LinkAndroid.savedState",
  ]
end
