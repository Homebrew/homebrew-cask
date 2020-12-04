cask "insomnia-designer" do
  version "2020.5.1"
  sha256 "7ec0d59b8919a6616e2ea7ead85476d19d2849ab700eb87fd8f5d3d48accb4cb"

  # github.com/Kong/insomnia/ was verified as official when first introduced to the cask
  url "https://github.com/Kong/insomnia/releases/download/designer%40#{version}/Insomnia.Designer-#{version}.dmg"
  appcast "https://api.insomnia.rest/changelog.json?app=com.insomnia.designer"
  name "Insomnia Designer"
  desc "API design platform for GraphQL and REST"
  homepage "https://insomnia.rest/"

  auto_updates true

  app "Insomnia Designer.app"

  zap trash: [
    "~/Library/Application Support/Insomnia Designer",
    "~/Library/Caches/com.insomnia.designer",
    "~/Library/Caches/com.insomnia.designer.ShipIt",
    "~/Library/Logs/Insomnia Designer",
    "~/Library/Preferences/com.insomnia.designer.plist",
    "~/Library/Saved Application State/com.insomnia.designer.savedState",
  ]
end
