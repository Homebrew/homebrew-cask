cask "mattr-slate" do
  version "1.2.0"
  sha256 "d409ccda9ed09f5647175f8834650e141a7375ced9665bf6af237525665d4966"

  url "https://github.com/mattr-/slate/releases/download/v#{version}/Slate.zip"
  name "Slate"
  homepage "https://github.com/mattr-/slate"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true
  conflicts_with cask: "slate"

  app "Slate.app"

  zap trash: [
    "~/.slate",
    "~/.slate.js",
    "~/Library/Application Support/com.slate.Slate",
  ]
end
