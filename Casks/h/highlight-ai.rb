cask "highlight-ai" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.3.275"
  sha256 arm:   "cd44cdf31cbef366d86ba495c55d1364e98ee96f562839a037e4562ddff6e769",
         intel: "caeefb2875b10967d96930a504a5645b8d763c6da7bc3bbed95cbca5c5df6929"

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
