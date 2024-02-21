cask "ollama" do
  version "0.1.26"
  sha256 "e35e24e98ee876a10c8db5cf91776c4fb46877c16a5d367843c3e05e231819e2"

  url "https://github.com/ollama/ollama/releases/download/v#{version}/Ollama-darwin.zip",
      verified: "github.com/ollama/ollama/"
  name "Ollama"
  desc "Get up and running with large language models locally"
  homepage "https://ollama.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with formula: "ollama"
  depends_on macos: ">= :high_sierra"

  app "Ollama.app"
  binary "#{appdir}/Ollama.app/Contents/Resources/ollama"

  zap trash: [
    "~/.ollama",
    "~/Library/Application Support/Ollama",
  ]
end
