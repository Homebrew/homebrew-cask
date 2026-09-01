cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.538.0"
  sha256 arm:          "474fa356ebd795405baa7d51e8850868a6dc0f7911f44abdcfddcfc98ac62118",
         intel:        "f917b0f9404ed5de53bfd1e136e70e7fc012bc5e87c9477b7026cf5637a6adc2",
         arm64_linux:  "7c21289a8908b34c505459b0c6dc7929ae2e37deec7b835e5c96f8dfb3176526",
         x86_64_linux: "1f6775e66988dad188ed3b679b3c46d75b5d4a97403234cd4dc8b9be455c8cdb"

  on_macos do
    depends_on macos: :big_sur
  end

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
