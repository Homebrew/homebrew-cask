cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.10"
  sha256 arm:          "ac4f4d012a6d156718eef9aa8f2c7dd7e1f5c47362faf84d3eed412d805f2e2b",
         intel:        "ac4f4d012a6d156718eef9aa8f2c7dd7e1f5c47362faf84d3eed412d805f2e2b",
         arm64_linux:  "57dca26f51efc050112b733a65dea6f6c8e68da7a2946afd7c1eb8834d9eeb92",
         x86_64_linux: "1e8ad2d2a394efdd235bee74deec237badd95142ffba77588140ab2a9ecec227"

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
