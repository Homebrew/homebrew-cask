cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.19"
  sha256 arm:          "c335802128e9ac33fc0599fa9da661c3d44fbe0dc0176bb6a2f4134386205942",
         intel:        "c335802128e9ac33fc0599fa9da661c3d44fbe0dc0176bb6a2f4134386205942",
         arm64_linux:  "29e1dd8826628d73c49655b497c70cb3f3c40f7d0d43ca8f8a150a4e6e4dbc72",
         x86_64_linux: "8eb99f9dd91c82f4c51a2c891415bfbdf07bd43f627d82514c47dfd613d2070f"

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
