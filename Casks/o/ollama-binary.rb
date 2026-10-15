cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.5"
  sha256 arm:          "75f9907dafa2fd4c61b5967de2ebb81ccc17eb28da9172edbad0dbc717474dcf",
         intel:        "75f9907dafa2fd4c61b5967de2ebb81ccc17eb28da9172edbad0dbc717474dcf",
         arm64_linux:  "fbe71ebb1a10e59b8480c4d2839826b5f9dff1a6d5c142428b2e7db9b1a2c642",
         x86_64_linux: "dc5eabc292f9949546c90a97c820f924b035e05243b0de13c7f366182562169c"

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
