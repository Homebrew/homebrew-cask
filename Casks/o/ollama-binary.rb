cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.35.0"
  sha256 arm:          "2608dbb0a0f0136a198db9d48b4f74ece55f452314a39452fca35b7cf20c2589",
         intel:        "2608dbb0a0f0136a198db9d48b4f74ece55f452314a39452fca35b7cf20c2589",
         arm64_linux:  "cb627d332b1fe5055bd5485ca10d595da8429e447648209e375390ec3bd09374",
         x86_64_linux: "1c114a6b220c5efca2ef2b1e5f01d1e535e26f6cd6d1678c8489325d2835e525"

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
