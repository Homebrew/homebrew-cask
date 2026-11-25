cask "davit" do
  version "0.1.39"
  sha256 "392b9d139d6072e03145b96fb0ade14b70874a3df90fe7e445b140d39ee8910c"

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
