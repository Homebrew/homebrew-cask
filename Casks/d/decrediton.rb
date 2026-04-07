cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.4"
  sha256 arm:   "a282230548716eac07a498c25650ef0327a991e50eba0eca614943a8b0542f84",
         intel: "0ecc32efbce5af743e06514aee94ccb4f6abf44c219868dc3d62913c93233cce"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-darwin-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"

  depends_on macos: ">= :big_sur"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
