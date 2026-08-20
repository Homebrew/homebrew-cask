cask "brilliant" do
  version "0.1.0-beta.55"
  sha256 "9933b30d3d35b6a0b82154fe06a52e308767f55f1b8d2f535a4dbef6529262b2"

  url "https://api.brilliant.design/v1/download/macos/#{version}"
  name "Brilliant"
  desc "AI-native design tool"
  homepage "https://brilliant.design/"

  livecheck do
    url "https://api.brilliant.design/v1/versions/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "brilliant.app"

  uninstall quit: "design.brilliant"

  zap trash: [
    "~/.config/brilliant",
    "~/.config/brilliant.design",
    "~/Library/Application Support/Brilliant",
    "~/Library/Application Support/design.brilliant",
    "~/Library/Caches/design.brilliant",
    "~/Library/Preferences/design.brilliant.plist",
    "~/Library/Saved Application State/design.brilliant.savedState",
  ]
end
