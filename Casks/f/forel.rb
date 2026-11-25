cask "forel" do
  version "1.2.0"
  sha256 "9c16c98f766352d0da063a1228e7df154379ea3f8a892050347eafe1c36c6ddb"

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
