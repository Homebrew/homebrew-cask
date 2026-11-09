cask "swama" do
  version "2.5.1"
  sha256 "eaa84fe25979df8523d2334e6c491240d0bb55723cc950fa2b151eebcdbc328f"

  url "https://github.com/Trans-N-ai/swama/releases/download/v#{version}/Swama.dmg"
  name "Swama"
  desc "Machine-learning runtime"
  homepage "https://github.com/Trans-N-ai/swama"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Swama.app"

  zap trash: "~/Library/Preferences/trans-n.ai.Swama.plist"
end
