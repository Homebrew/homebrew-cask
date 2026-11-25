cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.18"
  sha256 arm:          "015261f434d31d7f0781f8ba6b59cc8e1f70ecb562a4e6db44dfdd5e02f7e562",
         intel:        "015261f434d31d7f0781f8ba6b59cc8e1f70ecb562a4e6db44dfdd5e02f7e562",
         arm64_linux:  "63f01dae3b65641866991e75e2aecb7aed8a4041f4c2c3c7d92862c5a47ebed6",
         x86_64_linux: "b82649006cb5b54ed1237fa2d1a26a7f939a4fd03150033759acbff7ff315adf"

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
