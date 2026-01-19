cask "swama" do
  version "2.0.1"
  sha256 "570ddd8bc03ed49394a3229c86eda3f40141c6e03b7497fc80fad9f359d9649b"

  url "https://github.com/Trans-N-ai/swama/releases/download/v#{version}/Swama.dmg"
  name "Swama"
  desc "Machine-learning runtime"
  homepage "https://github.com/Trans-N-ai/swama"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Swama.app"

  zap trash: "~/Library/Preferences/trans-n.ai.Swama.plist"
end
