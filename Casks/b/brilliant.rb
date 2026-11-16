cask "brilliant" do
  version "1.0.0-beta.117"
  sha256 "452171023ca3478b92c3db5fc7cc7afd277fb2b0f9ebcf7a7822066c6a3ba7eb"

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
