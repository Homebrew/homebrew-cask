cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.6"
  sha256 arm:          "b2b55434865a668decb494110d7fd970eed3ecc8837be2872f672ccbb95df974",
         intel:        "b2b55434865a668decb494110d7fd970eed3ecc8837be2872f672ccbb95df974",
         arm64_linux:  "0a279d9428ad17b06fdb7dddf3b059b2c148433585fa3b30676a102fc459bb9f",
         x86_64_linux: "c164ab8b1b28e2a247c29719b8e404c423c5b83ae64c3ab4e59d50c7ff7fc5e0"

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
