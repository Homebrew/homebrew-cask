cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.12"
  sha256 arm:          "1d1b4c2cf40d2a239f9b08a77384830800a8542c744a55f47247f9baf85b55d2",
         intel:        "1d1b4c2cf40d2a239f9b08a77384830800a8542c744a55f47247f9baf85b55d2",
         arm64_linux:  "eab411c311611fe0fcddf5ba73c68ea94a9571007b520d8708112348b87c0bd6",
         x86_64_linux: "f8adcb7e08d272283a4bd3abc18cf581afe37e64b2aee04fda4f407f215485ba"

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
