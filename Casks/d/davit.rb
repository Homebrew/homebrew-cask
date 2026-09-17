cask "davit" do
  version "0.1.36"
  sha256 "b22ede8685315987610122a388ae4859ef04a163fd3dcd2bdaaa7cdece0c3e0f"

  url "https://github.com/wouterdebie/davit/releases/download/v#{version}/Davit-#{version}.zip"
  name "Davit"
  desc "GUI for Apple's container CLI"
  homepage "https://davit.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Davit.app"

  zap trash: [
    "~/Library/Caches/dev.wouter.davit",
    "~/Library/HTTPStorages/dev.wouter.davit",
    "~/Library/Preferences/dev.wouter.davit.plist",
  ]
end
