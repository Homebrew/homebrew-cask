cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.2"
  sha256 arm:          "e888b7637291ceb80b622c00ea067f62c86d9c50d419b3eb903032e4f1f8a4f6",
         intel:        "e888b7637291ceb80b622c00ea067f62c86d9c50d419b3eb903032e4f1f8a4f6",
         arm64_linux:  "92b3ef3d5e10f5849273bfa1345000f2a8ce8bc834e95061ff5b9df5d08e3c3f",
         x86_64_linux: "726bee78706c281b0eeef00746efe51a044d71c592c3f0b195820707f31fdf04"

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
