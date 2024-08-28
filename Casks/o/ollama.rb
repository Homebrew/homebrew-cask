cask "ollama" do
  version "0.3.8"
  sha256 "58b81558904328db6e500e09ae4d9aa49c068fb8e9dc616f3e23cde24f897a6d"

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
