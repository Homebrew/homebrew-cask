cask "forel" do
  version "1.1.0"
  sha256 "2d7cda993b69ea794dd64a80c737d9cd5bc5d1d46e4dfa09c5cb382148ced7d5"

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
    "~/Library/Preferences/com.lab421.forel.plist",
  ]
end
