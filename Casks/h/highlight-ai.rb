cask "highlight-ai" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.2.168"
  sha256 arm:   "01250be107d2c1767e2f9357b99fc4426a5bdf8291cb497b3bb027ae428c8655",
         intel: "618264d5be7b7201ac2f4c545caa05d4ea27b6f42fb55b0535c5313edd5079a0"

  url "https://cdn.highlightai.com/releases/darwin/#{arch}/Highlight-#{version}#{arch_suffix}.dmg"
  name "Highlight"
  desc "Context-aware AI assistant"
  homepage "https://highlightai.com/"

  livecheck do
    url "https://cdn.highlightai.com/releases/darwin/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Highlight.app"

  zap trash: [
    "~/Library/Application Support/Highlight",
    "~/Library/Preferences/tv.medal.highlight.plist",
    "~/Library/Saved Application State/tv.medal.highlight.savedState",
  ]
end
