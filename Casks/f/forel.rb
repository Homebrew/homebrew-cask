cask "forel" do
  version "1.2.1"
  sha256 "ceed5d8596e47a85cd7d6fb3f0d03324d6d70b55a1ba8e9805440fc360f7481b"

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
