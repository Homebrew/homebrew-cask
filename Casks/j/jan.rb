cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.5.10"
  sha256 arm:   "7c976d51c418be0bdd7a9abe1dcf07b97072126989147c369196fac40dc0579f",
         intel: "41eefd086ac3be41dfe008fddd08145695638eb7ab937df59d4aa42a395dad99"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-#{arch}-#{version}.dmg",
      verified: "github.com/janhq/jan/"
  name "Jan"
  desc "Offline AI chat tool"
  homepage "https://jan.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Jan.app"

  zap trash: [
    "~/Library/Application Support/Jan",
    "~/Library/Preferences/jan.ai.app.plist",
    "~/Library/Saved Application State/jan.ai.app.savedState",
  ]
end
