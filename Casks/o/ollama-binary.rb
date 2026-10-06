cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.0"
  sha256 arm:          "b490b4925a95c5f3dfcd889e566cf3dcd727848d59057fb00b03f1d6630326dc",
         intel:        "b490b4925a95c5f3dfcd889e566cf3dcd727848d59057fb00b03f1d6630326dc",
         arm64_linux:  "4d27cb1d8f46176a3c0ce10aea2a16e4ad73dfe1599f2ed13468f29e5b8aba0d",
         x86_64_linux: "c94aa4156b3d13e64ebc2efe5ea53f015384c882be776e6695cfb37fb180d5ad"

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
