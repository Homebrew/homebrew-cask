cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.4"
  sha256 arm:          "a4ceae4b2aaf18df37ebcbfb56ba3a37a87838631112d66c2be07268693c8d58",
         intel:        "a4ceae4b2aaf18df37ebcbfb56ba3a37a87838631112d66c2be07268693c8d58",
         arm64_linux:  "1a314ac530d2c23bf6d2aaaf4a4aba8cc0b2a4ee8bc8fae3f3aa88bff7f7177b",
         x86_64_linux: "15f31e9576d15a481e099b4145dba6e9f8c1f295927d6b8895300ae30ed3740a"

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
