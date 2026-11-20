cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.16"
  sha256 arm:          "a743717494315da7cd352982b805f6b992d4b4452ca117fd5fbf86c4ee46fca0",
         intel:        "a743717494315da7cd352982b805f6b992d4b4452ca117fd5fbf86c4ee46fca0",
         arm64_linux:  "e45b8e6dcb86cb9f3057396351655079c9a4879b4ced2678c9350d375dcbc224",
         x86_64_linux: "87bfafb2acbc89b2e6a1be0a9043de6aa75fb450696f86bc426e65fc448f788d"

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
