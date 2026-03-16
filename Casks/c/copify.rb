cask "copify" do
  version "1.0.0"
  sha256 "14cd9ec0ce368fe9d2c2a4dc3470528c46a04680a41884e0249d198a021dfa2a"

  url "https://github.com/rkeshri04/copify/releases/download/v1.0.0/Copify.dmg"
  name "Copify"
  desc "Free open source clipboard manager for macOS"
  homepage "https://copify.wasmer.app/"

  app "Copify.app"

  zap trash: [
    "~/Library/Application Support/Copify",
    "~/Library/Preferences/com.copify.app.plist",
  ]
end
