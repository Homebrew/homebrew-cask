cask "altair-graphql-client" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "8.5.7"
  sha256 arm:          "bf62986cbc4a481942a37d555a4b052252acddc45640ea406eb2fce96b33db1d",
         intel:        "01d529356dcc79ddf2ef311c720feb343da0731d8f3f45dea6470528befd7823",
         arm64_linux:  "f58cf972456a97a968f23945b496b354e0af79dca74f97c25f7001b596c5bee1",
         x86_64_linux: "fef93ca2f72372b68429136f3b28a6260285999c7dbe0fa89062d38080b6941c"

  on_macos do
    depends_on macos: :big_sur

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

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_#{os}.#{url_end}",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altairgraphql.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
