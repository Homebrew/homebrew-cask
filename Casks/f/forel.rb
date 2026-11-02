cask "forel" do
  version "1.1.1"
  sha256 "d93cac43d25069da6ecb32ab971ef62c0a4e86fb0ba8baa8ef3f585caacd74d6"

  url "https://github.com/lab421/forel/releases/download/v#{version}/Forel-v#{version}.dmg"
  name "Forel"
  desc "Rule-based file automation"
  homepage "https://forel-app.github.io/"

  auto_updates true
  depends_on macos: :sonoma

  app "Forel.app"

  zap trash: [
    "~/Library/Application Support/com.lab421.forel",
    "~/Library/Caches/com.lab421.forel",
    "~/Library/HTTPStorages/com.lab421.forel",
    "~/Library/Preferences/com.lab421.forel.licensing.plist",
    "~/Library/Preferences/com.lab421.forel.plist",
  ]
end
