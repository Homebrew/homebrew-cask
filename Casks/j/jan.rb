cask "jan" do
  version "0.6.3"
  sha256 "2a93f2f2b9f7da53fc4e213c8a18489af885f1a82cd2a4d5f5fd07e8e3702623"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-universal-#{version}.zip",
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
