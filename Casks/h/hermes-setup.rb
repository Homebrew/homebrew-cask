cask "hermes-setup" do
  version "2026.7.1"
  sha256 :no_check

  url "https://hermes-assets.nousresearch.com/Hermes-Setup.dmg"
  name "Hermes"
  desc "Self-improving AI agent desktop installer from Nous Research"
  homepage "https://hermes-agent.nousresearch.com/"

  livecheck do
    url "https://github.com/NousResearch/hermes-agent/releases/latest"
    strategy :github_latest
  end

  conflicts_with cask: "hermes"
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Hermes.app"

  zap trash: [
    "~/.hermes",
    "~/Library/Preferences/com.nousresearch.hermes.setup.plist",
    "~/Library/Saved Application State/com.nousresearch.hermes.setup.savedState",
  ]
end
