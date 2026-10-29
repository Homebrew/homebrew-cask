cask "ollama-binary" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: ".tgz", linux: "-#{arch}.tar.zst"

  version "0.40.13"
  sha256 arm:          "bae29252232b9e1358cf5801a7d65a07442af18fb5467cb68c7fc3711f59c511",
         intel:        "bae29252232b9e1358cf5801a7d65a07442af18fb5467cb68c7fc3711f59c511",
         arm64_linux:  "913d9a28da6da86d551ce4ca531457767bb14d511cbc1d5ca93e9b3b8b9a8666",
         x86_64_linux: "c9490e0f520be21271d969e6703f012268b1d39f8b70dd58854e5bfef7a75bb6"

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
