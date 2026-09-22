cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.34.3"
  sha256 arm:          "2c45865f94bce0d4d1d2567603dd2fdacaf375585220a175aa4800105193d36e",
         intel:        "2c45865f94bce0d4d1d2567603dd2fdacaf375585220a175aa4800105193d36e",
         arm64_linux:  "cb1d3c178d48b302dbe42b4fb0ce25ef6282e02eac25496cfc07f5333e2264dd",
         x86_64_linux: "e83a089fd0cd2f79ee2933cca2085846a2065f497adbc6467c402177c68423f9"

  on_macos do
    conflicts_with cask: "ollama-app"
    depends_on macos: :sonoma

    binary "ollama"
  end
  on_linux do
    binary "bin/ollama"
  end

  url "https://github.com/ollama/ollama/releases/download/v#{version}/ollama-#{os}#{url_end}"
  name "Ollama"
  desc "Get up and running with large language models locally"
  homepage "https://ollama.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: "~/.ollama"
end
