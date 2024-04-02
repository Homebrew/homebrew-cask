cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.4.10"
  sha256 arm:   "0d5901d559d1d4cc6db03b162ae5c14e3f051c82e9a81af541320459615c8921",
         intel: "89fbf913f36d45cd1348aba7600954e6550b3a9a52fd6fa96ba94f389b888467"

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
