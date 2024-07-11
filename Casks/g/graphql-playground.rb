cask "graphql-playground" do
  version "1.8.10"
  sha256 "43d54be598ec83dddcaee789e8434c547d0ff1a49ffc2d95fb798996293b7f13"

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  name "GraphQL Playground"
  desc "GraphQL IDE for better development workflows"
  homepage "https://github.com/prisma/graphql-playground"

  deprecate! date: "2024-07-11", because: :unmaintained

  app "GraphQL Playground.app"

  zap trash: [
    "~/Library/Caches/cool.graph.playground",
    "~/Library/Caches/cool.graph.playground.ShipIt",
    "~/Library/HTTPStorages/cool.graph.playground",
    "~/Library/Preferences/cool.graph.playground.helper.plist",
    "~/Library/Preferences/cool.graph.playground.plist",
    "~/Library/Saved Application State/cool.graph.playground.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
