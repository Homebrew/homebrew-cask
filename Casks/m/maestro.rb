cask "maestro" do
  arch arm: "-arm64"

  version "0.13.2"
  sha256 arm:   "9c17bdad693e30f14df24c9a278f7a41ab077a71acf242da07f5e389a28f1e74",
         intel: "f46ee87fbd0f3ccac7a081a8c3358193846bd0ebdfac42b4b1ab1191761acf86"

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version}/Maestro-#{version}#{arch}.dmg",
      verified: "github.com/pedramamini/Maestro/"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
    "~/Library/Application Support/maestro",
    "~/Library/Preferences/com.maestro.app.plist",
  ]
end
