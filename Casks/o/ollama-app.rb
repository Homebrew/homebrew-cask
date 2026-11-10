cask "ollama-app" do
  version "0.40.16"
  sha256 "4715531bc49d21337381b193765041e535a9fb4716f84e5d6eccc3a9af1b5303"

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
