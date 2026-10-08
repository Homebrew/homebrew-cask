cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.1"
  sha256 arm:          "66e1587711f3a06315b23782ba74897001da6c8b8edf6c0371f7533015a076dd",
         intel:        "66e1587711f3a06315b23782ba74897001da6c8b8edf6c0371f7533015a076dd",
         arm64_linux:  "f5cbd9a97e0de9502ef928cb993f6d16468e25be6d55a8529d7fd2b67a130bcb",
         x86_64_linux: "a7aebbe3dd76ccf1351a56a3e57218ad4863cb5f9a9938c58de87a37555e355d"

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
