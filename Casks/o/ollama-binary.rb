cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.34.0"
  sha256 arm:          "dd12b00bcce2d6551178e67ada90d5af9f75bdb54a118b96655250fa3e8ef734",
         intel:        "dd12b00bcce2d6551178e67ada90d5af9f75bdb54a118b96655250fa3e8ef734",
         arm64_linux:  "6a9e5b3650c2024d8a78da86b23876f6eea238657a3262d7e5ec0f3688c5d28e",
         x86_64_linux: "cf95886728959aa09910bb34de5cca1cc5a8f68003b5597197d3f2c2d57c0804"

  on_macos do
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
