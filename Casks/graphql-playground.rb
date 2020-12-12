cask "graphql-playground" do
  version "1.8.10"
  sha256 "43d54be598ec83dddcaee789e8434c547d0ff1a49ffc2d95fb798996293b7f13"

  url "https://github.com/prisma/graphql-playground/releases/download/v#{version}/graphql-playground-electron-#{version}.dmg"
  appcast "https://github.com/prisma/graphql-playground/releases.atom"
  name "GraphQL Playground"
  homepage "https://github.com/prisma/graphql-playground"

  app "GraphQL Playground.app"
end
