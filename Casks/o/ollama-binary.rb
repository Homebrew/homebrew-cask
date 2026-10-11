cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.3"
  sha256 arm:          "a2d1d906a2c8febd9cb18f5c183854d0a6db5dc522940d68b0c0ed048e8dfdea",
         intel:        "a2d1d906a2c8febd9cb18f5c183854d0a6db5dc522940d68b0c0ed048e8dfdea",
         arm64_linux:  "5754700747a93ea14db88888f08072386d2da6fbf7dd75be19a684348b9f28b8",
         x86_64_linux: "ce6f8b671a699bf1ebafb28d60dbbabf4f37b30b499145fa308a8ba72de021d6"

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
