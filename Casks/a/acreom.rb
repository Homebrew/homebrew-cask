cask "acreom" do
  arch arm: "-arm64"

  version "1.17.1"
  sha256 arm:   "d04dd30a3eaf1e5b69fa0dde36f7b37d650d882b76479fc95caeed7584445069",
         intel: "a62d7b93055da8af7a1c95c4987842bd1fc0feb9e2dae23b81cc8975bc95c3e3"

  url "https://github.com/Acreom/releases/releases/download/v#{version}/acreom-#{version}#{arch}.dmg",
      verified: "github.com/Acreom/releases/"
  name "acreom"
  desc "Personal knowledge base for developers"
  homepage "https://acreom.com/"

  depends_on macos: ">= :high_sierra"

  app "acreom.app"

  zap trash: [
    "~/Library/Application Support/acreom",
    "~/Library/Logs/acreom",
    "~/Library/Preferences/com.acreom.acreom-desktop.plist",
    "~/Library/Saved Application State/com.acreom.acreom-desktop.savedState",
  ]
end
