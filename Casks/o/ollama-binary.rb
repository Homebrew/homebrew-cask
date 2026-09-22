cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.34.2"
  sha256 arm:          "f33b2a5aa59bc6c961ed3ec23ba9dc646ca6d99ced8d2a0d46eb3a522167dd3f",
         intel:        "f33b2a5aa59bc6c961ed3ec23ba9dc646ca6d99ced8d2a0d46eb3a522167dd3f",
         arm64_linux:  "8edcfe99eb7546d9422cfa8297d341dcd50e090e192ce1a8092a6ab6d182867b",
         x86_64_linux: "e155b83589986d2c581fdbf1381ea3ebdb16549883679cd5a0627f7cdc05b12b"

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
