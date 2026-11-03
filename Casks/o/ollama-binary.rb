cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.14"
  sha256 arm:          "f3bf9a528e908da0da5a2b3a4ad3252a369d62186501dc4880261e8d9023bff5",
         intel:        "f3bf9a528e908da0da5a2b3a4ad3252a369d62186501dc4880261e8d9023bff5",
         arm64_linux:  "39bb333b7b4c0bafcdd7fad35eab1ae9aaf4518ea0f2c731de4376e3a29c94d0",
         x86_64_linux: "993e83d08c3d13d17c55009a3e2664c8a25445e644aec3a68bef5abb6abce67d"

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
