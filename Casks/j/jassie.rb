cask "jassie" do
  version "1.0.0"
  sha256 "c8589c830a087aaaccf384d7fcf6ce1894910ff6a90d8224afeac59149d9d5ac"

  url "https://pub-ba9f136fd179474cb0451157d198c49a.r2.dev/releases/#{version}/jassie-darwin-arm64"
  name "Jassie Code"
  desc "AI-powered CLI for building, debugging, and shipping code"
  homepage "https://jassie.ai/"

  livecheck do
    url "https://pub-ba9f136fd179474cb0451157d198c49a.r2.dev/releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  container type: :naked

  binary "jassie-darwin-arm64", target: "jassie"

  zap trash: [
    "~/.cache/jassie",
    "~/.config/jassie",
    "~/.jassie",
    "~/.local/share/jassie",
    "~/.local/state/jassie",
  ]
end
