cask "swama" do
  version "2.4.0"
  sha256 "e0927a6454a65c0608485f87cbb12457a1e3da95728be71efdca899db1a55f56"

  url "https://github.com/Trans-N-ai/swama/releases/download/v#{version}/Swama.dmg"
  name "Swama"
  desc "Machine-learning runtime"
  homepage "https://github.com/Trans-N-ai/swama"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Swama.app"

  zap trash: "~/Library/Preferences/trans-n.ai.Swama.plist"
end
