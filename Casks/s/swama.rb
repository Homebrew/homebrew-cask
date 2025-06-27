cask "swama" do
  version "1.4.0"
  sha256 "b82f325a024e85ae46bbdfed32ad97fa3a6fde58a7bbbf16d1ba5412c6e9e702"

  url "https://github.com/Trans-N-ai/swama/releases/download/v#{version}/Swama.dmg"
  name "Swama"
  desc "Machine-learning runtime"
  homepage "https://github.com/Trans-N-ai/swama"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Swama.app"

  zap trash: "~/Library/Preferences/trans-n.ai.Swama.plist"
end
