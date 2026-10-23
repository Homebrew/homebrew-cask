cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.9"
  sha256 arm:          "cdfaee591d3ba7753e1bb4ae28be228ef7488199f263b7f202e0eddc900c08f4",
         intel:        "cdfaee591d3ba7753e1bb4ae28be228ef7488199f263b7f202e0eddc900c08f4",
         arm64_linux:  "2a328795709135fcf0c011b9e2634431ab6f2fcab57ca11264725446cf4894b0",
         x86_64_linux: "01f0d0ae50cad3295a79a165033a65cf324f8ae5f7be64679464d29ecf28d67c"

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
