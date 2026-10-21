cask "ollama-app" do
  version "0.40.8"
  sha256 "fe930d0a8567fde70dc4a88b329b693efc15c8845795f5f6c2f7c4d3881b104d"

  url "https://github.com/ollama/ollama/releases/download/v#{version}/Ollama-darwin.zip"
  name "Ollama"
  desc "Get up and running with large language models locally"
  homepage "https://ollama.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "ollama-binary"
  depends_on macos: :sonoma

  app "Ollama.app"
  binary "#{appdir}/Ollama.app/Contents/Resources/ollama"

  uninstall launchctl: "com.ollama.ollama",
            quit:      "com.electron.ollama"

  zap trash: [
    "~/.ollama",
    "~/Library/Application Support/Ollama",
    "~/Library/Caches/com.electron.ollama",
    "~/Library/Preferences/com.electron.ollama.plist",
    "~/Library/Saved Application State/com.electron.ollama.savedState",
    "~/Library/Webkit/com.electron.ollama",
  ]
end
