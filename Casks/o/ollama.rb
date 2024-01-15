cask "ollama" do
  version "0.1.20"
  sha256 "99010c7afbbebedb4dfef2d701360b194945cd4180a3d62d9214851015633f86"

  url "https://github.com/jmorganca/ollama/releases/download/v#{version}/Ollama-darwin.zip",
      verified: "github.com/jmorganca/ollama/"
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
