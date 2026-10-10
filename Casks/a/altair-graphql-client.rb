cask "altair-graphql-client" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "8.5.11"
  sha256 arm:          "d74cf19dee99c46cceede89e5165011362e2eef17f1cb0000c1b52f8eff317a0",
         intel:        "520ddbe1c32634c54c787f48b4401047c4ad0eeceda20b40736db780df33113a",
         arm64_linux:  "8dce62ca484d9c54109c094abff47febbc9913b4d7c0614d75a519dcd13bde20",
         x86_64_linux: "591025b2b0dcc3fc4dc1b16f115bd1fc4ad96b86b29df8fc74144c11536b23bf"

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
