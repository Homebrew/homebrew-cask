cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.2.3"
  sha256 arm:   "c8c0f003d11a0ac70e253f93ad88dc746be9835aff0fdee284bfe2b0bba37ccf",
         intel: "9eabd4b4e44b08e5eb82c8a3ce5c4bc26987ad77708825d48a71d48687a94019"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
