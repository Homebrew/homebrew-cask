cask "highlight-ai" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.3.72"
  sha256 arm:   "e38c554ae9ed3e0a3fe0f879c9d2a2cdec255eb62b9fdf33a7ffcda290958ae7",
         intel: "77d179c11499d28e224ba7a93848161e0afb3ddc09f235f6ab51df90fe0bbebc"

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
