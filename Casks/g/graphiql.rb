cask "graphiql" do
  version "0.7.2"
  sha256 "204dd3db5c11bf265700d8d57defc4798cd0040651f751f35e2a646cb4846ac7"

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/graphiql-app-#{version}-mac.zip"
  name "GraphiQL App"
  desc "Light, Electron-based Wrapper around GraphiQL"
  homepage "https://github.com/skevy/graphiql-app"

  deprecate! date: "2024-07-11", because: :unmaintained

  app "GraphiQL.app"

  zap trash: [
    "~/Library/Application Support/GraphiQL",
    "~/Library/Preferences/com.sk3vy.graphiql-app.helper.plist",
    "~/Library/Preferences/com.sk3vy.graphiql-app.plist",
    "~/Library/Saved Application State/com.sk3vy.graphiql-app.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
