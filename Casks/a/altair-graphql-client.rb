cask "altair-graphql-client" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "8.5.9"
  sha256 arm:          "5dbf5a58be50922965bc30d5ed5dc38ee3607b89b01c3777827aeab8a27d7d3c",
         intel:        "189d4c57e293845d80f225e7ecdfa5e806a6caf468963f4a6b39d5680ba6566b",
         arm64_linux:  "9f371b65f1b197bb9cc0d70c160ab12c59b0f9e23e4588ca4035389f0c3ec9f2",
         x86_64_linux: "f12d800ec9cfa1f5153bcbd41a1da9152edfe76141dced42c9e188570d1213aa"

  on_macos do
    depends_on macos: :monterey

    app "Altair GraphQL Client.app"

    zap trash: [
      "~/Library/Application Support/altair",
      "~/Library/Preferences/com.electron.altair.helper.plist",
      "~/Library/Preferences/com.electron.altair.plist",
      "~/Library/Saved Application State/com.electron.altair.savedState",
    ]
  end
  on_linux do
    app_image "altair_#{version}_#{arch}_linux.AppImage", target: "Altair.AppImage"
  end

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_#{os}.#{url_end}"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altairgraphql.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
