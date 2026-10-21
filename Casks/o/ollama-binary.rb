cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.7"
  sha256 arm:          "6c8b378e423a4c959b586c0bb62865d20ae057e817f1a8ee10abcc44bde6abab",
         intel:        "6c8b378e423a4c959b586c0bb62865d20ae057e817f1a8ee10abcc44bde6abab",
         arm64_linux:  "c74249e87795b1437ce0f484adfd05b4628d7497472c475b13ec6db69ecc69cf",
         x86_64_linux: "7f082e625b4c334df84ed1558fe282d6d8091fe3545790aef30b3a9c50d44d41"

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
