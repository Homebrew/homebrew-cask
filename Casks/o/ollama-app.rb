cask "ollama-app" do
  version "0.13.0"
  sha256 "bbb88c0c5ebe8c331a9ba510ec9fa2e40eaa462582e788280c9b1cb7294facf3"

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
    "~/Library/Preferences/com.electron.ollama.plist",
    "~/Library/Saved Application State/com.electron.ollama.savedState",
  ]
end
