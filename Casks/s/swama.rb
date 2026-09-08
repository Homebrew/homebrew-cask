cask "swama" do
  version "2.3.0"
  sha256 "36c8a0d0c765bfb5e3e41d9a2fba2a2af24048480470d963c71ac6585e148dab"

  url "https://github.com/Trans-N-ai/swama/releases/download/v#{version}/Swama.dmg"
  name "Swama"
  desc "Machine-learning runtime"
  homepage "https://github.com/Trans-N-ai/swama"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Swama.app"

  zap trash: "~/Library/Preferences/trans-n.ai.Swama.plist"
end
