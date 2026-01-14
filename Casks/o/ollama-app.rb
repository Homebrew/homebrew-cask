cask "ollama-app" do
  arch arm: "arm64", intel: "amd64"
  os macos: "Ollama-darwin.zip", linux: "ollama-linux-#{arch}.tgz"

  version "0.13.5"
  sha256 arm:          "b0ed88eb639ddfc895f1af8df1a4edabdc4f45078c13567a0de8b74e097871e2",
         x86_64:       "b0ed88eb639ddfc895f1af8df1a4edabdc4f45078c13567a0de8b74e097871e2",
         x86_64_linux: "41fb93ff8be35e4d2d22bafd1c42b487efb15b766076d976766bd1ee4db3f8e2",
         arm64_linux:  "35898a3e6e6b3aa373e6ba381336bcfd5305f115a4c45dc8738cf96e25e0a557"

  url "https://github.com/ollama/ollama/releases/download/v#{version}/#{os}",
      verified: "github.com/ollama/ollama/"
  name "Ollama"
  desc "Get up and running with large language models locally"
  homepage "https://ollama.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: ">= :sonoma"

    app "Ollama.app"
    binary "#{appdir}/Ollama.app/Contents/Resources/ollama"
  end
  on_linux do
    binary "bin/ollama"
  end

  zap trash: [
    "~/.ollama",
    "~/Library/Application Support/Ollama",
    "~/Library/Preferences/com.electron.ollama.plist",
    "~/Library/Saved Application State/com.electron.ollama.savedState",
  ]
end
