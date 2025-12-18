cask "highlight-ai" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.3.228"
  sha256 arm:   "fde973e0eca2ffa6aa49d0b4967c67f176205640273c0ae75338b426ee89ed9f",
         intel: "2022e64701384c6bb9142ba8aa8009ef97bdb31e6133ee595b8290750e1d554a"

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
