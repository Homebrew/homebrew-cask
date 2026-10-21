cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.8"
  sha256 arm:          "29fce20c736f62aa8885b1e83552c5fd8dcc63edc5ffc1b47f2de591a06cde44",
         intel:        "29fce20c736f62aa8885b1e83552c5fd8dcc63edc5ffc1b47f2de591a06cde44",
         arm64_linux:  "f2e512f67f86ac5c53847e4e586ca8a9d3f359faf7a71cd69e37f12dcc63ded0",
         x86_64_linux: "0bb17cc19e9c1339ddbe0cba55148bf068f8f19dec8ec5fd531461aaa207282a"

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
