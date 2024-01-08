cask "ollama" do
  version "0.1.18"
  sha256 "8a8ad83a713b03453c4c3a2763f498149be27b191d481792ebb7b4c4c8dd876f"

  url "https://github.com/jmorganca/ollama/releases/download/v#{version}/Ollama-darwin.zip",
      verified: "github.com/jmorganca/ollama/"
  name "Ollama"
  desc "Get up and running with large language models locally"
  homepage "https://ollama.ai/"

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
