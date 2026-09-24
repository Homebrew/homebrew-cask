cask "jassie" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "b98fe41f6e81c8860e70fb5a8bf00b738140f688228c679a2b605738328dce3e",
         intel: "b98fe41f6e81c8860e70fb5a8bf00b738140f688228c679a2b605738328dce3e"

  url "https://pub-ba9f136fd179474cb0451157d198c49a.r2.dev/releases/#{version}/jassie-darwin-#{arch}"
  name "Jassie Code"
  desc "AI-powered CLI for building, debugging, and shipping code"
  homepage "https://jassie.ai"
  container type: :naked

  livecheck do
    url "https://pub-ba9f136fd179474cb0451157d198c49a.r2.dev/releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "jassie-darwin-#{arch}", target: "jassie"

  zap trash: [
    "~/.jassie",
    "~/.config/jassie",
    "~/.cache/jassie",
    "~/.local/share/jassie",
    "~/.local/state/jassie",
  ]
end
