cask "ollama" do
  version "0.1.19"
  sha256 "f6da387d45695ec93db00a52f6e001e702c28d17c71930d1bed98137b13c08da"

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
