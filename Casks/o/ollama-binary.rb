cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.15"
  sha256 arm:          "607c79d5d6315ef9d896db83adde736a4c0057196329843544e79b95afb260a8",
         intel:        "607c79d5d6315ef9d896db83adde736a4c0057196329843544e79b95afb260a8",
         arm64_linux:  "7f699ead5cdb4ae1ed89b888b148a238af188708800871e1889ab9dcee95f247",
         x86_64_linux: "628c018404a4206493efd38e46251c154ede5141b8b8dc85c659b3b027c47379"

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
