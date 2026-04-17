cask "ollama-app" do
  version "0.21.0"
  sha256 "700face7ac186443b627895863f5984cd760374dc12ad1dcb6279ae2d6ced7eb"

  url "https://github.com/ollama/ollama/releases/download/v#{version}/Ollama-darwin.zip",
      verified: "github.com/ollama/ollama/"
  name "Ollama"
  desc "Get up and running with large language models locally"
  homepage "https://ollama.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Ollama.app"
  binary "#{appdir}/Ollama.app/Contents/Resources/ollama"

  zap trash: [
    "~/.ollama",
    "~/Library/Application Support/Ollama",
    "~/Library/Caches/com.electron.ollama",
    "~/Library/Preferences/com.electron.ollama.plist",
    "~/Library/Saved Application State/com.electron.ollama.savedState",
    "~/Library/Webkit/com.electron.ollama",
  ]
end
