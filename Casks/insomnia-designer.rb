cask "insomnia-designer" do
  version "2020.5.2"
  sha256 "a9cf020f15e8903656ade25508e8b8af172561ee84776c05a8b36713866d3371"

  url "https://github.com/Kong/insomnia/releases/download/designer%40#{version}/Insomnia.Designer-#{version}.dmg",
      verified: "github.com/Kong/insomnia/"
  name "Insomnia Designer"
  desc "API design platform for GraphQL and REST"
  homepage "https://insomnia.rest/"

  livecheck do
    url :url
    regex(/^designer@?(\d+(?:\.\d+)+)$/i)
  end

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
