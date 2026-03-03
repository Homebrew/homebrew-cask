cask "swama" do
  version "2.1.0"
  sha256 "ef83fa59e0b650dffb904b399b12789f62a2ab7c75e955f3d0fd07a3647cd9ec"

  url "https://github.com/Trans-N-ai/swama/releases/download/v#{version}/Swama.dmg"
  name "Swama"
  desc "Machine-learning runtime"
  homepage "https://github.com/Trans-N-ai/swama"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Swama.app"

  zap trash: "~/Library/Preferences/trans-n.ai.Swama.plist"
end
