cask "maestro" do
  arch arm: "-arm64"

  version "0.14.3"
  sha256 arm:   "89d2d01fa85a77cd2c2da9370ca72e5e9c54569908cfabce8a68e829d8ba0781",
         intel: "b87d8daf11034c57a095ff8c9ab33ead20be8c00e28fef1b5eb57e44dab2cfd7"

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
