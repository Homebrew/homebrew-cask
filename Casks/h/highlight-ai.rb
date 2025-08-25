cask "highlight-ai" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.3.84"
  sha256 arm:   "0f0fb72e7fdc89c27dcdcdd5789d4f0062db521d90f457a0c1d91232c42bed5f",
         intel: "6f3691758f89c3e4ff4d189cba7a7a077e9e5bb3f5802363baf77852085189ba"

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
