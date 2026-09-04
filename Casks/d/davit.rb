cask "davit" do
  version "0.1.27"
  sha256 "647288b9ee2a5b032d843b7868948a1a583824a8db665181ca4a688233ac3302"

  url "https://github.com/wouterdebie/davit/releases/download/v#{version}/Davit-#{version}.zip"
  name "Davit"
  desc "GUI for Apple's container CLI"
  homepage "https://davit.app/"

  auto_updates true
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Davit.app"

  zap trash: [
    "~/Library/Caches/dev.wouter.davit",
    "~/Library/HTTPStorages/dev.wouter.davit",
    "~/Library/Preferences/dev.wouter.davit.plist",
  ]
end
