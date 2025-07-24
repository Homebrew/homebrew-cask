cask "swama" do
  version "1.4.2"
  sha256 "a7525c2a432d8bb81bc6c94939940e38b78b84c7d72ec0842e08e64c70b8c53d"

  url "https://github.com/Trans-N-ai/swama/releases/download/v#{version}/Swama.dmg"
  name "Swama"
  desc "Machine-learning runtime"
  homepage "https://github.com/Trans-N-ai/swama"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Swama.app"

  zap trash: "~/Library/Preferences/trans-n.ai.Swama.plist"
end
