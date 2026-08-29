cask "brilliant" do
  version "0.1.0-beta.58"
  sha256 "39780f26fecd6da078b420588906a03ae3dddd56ad40547ca175f912d15d5cad"

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
