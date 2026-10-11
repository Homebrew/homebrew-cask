cask "forel" do
  version "1.0.9"
  sha256 "dc99deddc6feba08f04ceda451bf4677bbb7ac646a6b3c28f3e054b102fd65f3"

  url "https://github.com/lab421/forel/releases/download/v#{version}/Forel-v#{version}.dmg"
  name "Forel"
  desc "Rule-based file automation"
  homepage "https://forel-app.github.io/"

  auto_updates true
  depends_on macos: :ventura

  app "Forel.app"

  zap trash: [
    "~/Library/Application Support/com.lab421.forel",
    "~/Library/Caches/com.lab421.forel",
    "~/Library/HTTPStorages/com.lab421.forel",
    "~/Library/Preferences/com.lab421.forel.plist",
  ]
end
