cask "brilliant" do
  version "0.1.0-beta.44"
  sha256 "ad80216bda4c41c1258919274e09aff6099c1b94a1db992ab0b85e922ebfdc33"

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
