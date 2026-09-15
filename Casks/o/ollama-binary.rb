cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.34.1"
  sha256 arm:          "f18fba83fb1eb415e143fb0c24372ebc4388fd7206f4927d4899932653e8c11d",
         intel:        "f18fba83fb1eb415e143fb0c24372ebc4388fd7206f4927d4899932653e8c11d",
         arm64_linux:  "b4bdbbbf5faf2fc15f9f6d775c984a33d5c6fee7b4fdeb3fb56612e58a172db9",
         x86_64_linux: "f361dc3992ec07e4ad429f4bb2d10d4663ba2c295f9a9a688c7d52f4ba650034"

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
