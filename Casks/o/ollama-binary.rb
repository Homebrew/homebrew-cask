cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.35.1"
  sha256 arm:          "3137dbf28948ee844e0fb3e584d9b5de6879d73d9f0cb7eff3ad64930601d307",
         intel:        "3137dbf28948ee844e0fb3e584d9b5de6879d73d9f0cb7eff3ad64930601d307",
         arm64_linux:  "b1b1c85d25136b256d3740f6ecd2f7c0105e8ca71642fd6ff2fc199f3cefd69d",
         x86_64_linux: "9fcd79ac4575b2bd31b992eee18b1000c8ad126b451627c8f8cd091714cfbb10"

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
