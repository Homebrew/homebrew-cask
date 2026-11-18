cask "brilliant" do
  version "1.0.0-beta.118"
  sha256 "4f67947c9e16a1ee63cfc43a723ebc7f0593a5c253c75090f1556bc9084edcd8"

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
