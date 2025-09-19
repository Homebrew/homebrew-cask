cask "ollama-app" do
  version "0.12.0"
  sha256 "a0692a289d591c7913a1e4577807ae47c9e62522209d0e79fc6f0ab8b41a62fb"

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
  depends_on macos: ">= :big_sur"

  app "Ollama.app"
  binary "#{appdir}/Ollama.app/Contents/Resources/ollama"

  zap trash: [
    "~/.ollama",
    "~/Library/Application Support/Ollama",
    "~/Library/Preferences/com.electron.ollama.plist",
    "~/Library/Saved Application State/com.electron.ollama.savedState",
  ]
end
