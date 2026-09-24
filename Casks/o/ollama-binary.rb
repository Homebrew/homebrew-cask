cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.34.4"
  sha256 arm:          "e9c8fddaab5f48f47f2c4ae3d23d0732f5182417125353faeed2188e34a22799",
         intel:        "e9c8fddaab5f48f47f2c4ae3d23d0732f5182417125353faeed2188e34a22799",
         arm64_linux:  "96f50a1192133028cf4e010d8c333f8af14b1505db6be7b2034c11487e7fd7e6",
         x86_64_linux: "c238986e61d40c0cc5f4a9b9e40b9eea104350b77efa34741fc134e105cb9533"

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
