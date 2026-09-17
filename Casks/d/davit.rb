cask "davit" do
  version "0.1.32"
  sha256 "37e6b6d47419e9c5cd4b86aa651ccfb5c8f2fb73516e0c6207bc4782a38b12ac"

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
