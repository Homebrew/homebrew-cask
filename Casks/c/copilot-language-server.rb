cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.506.0"
  sha256 arm:          "2081164150bd2f569f27dce6a85c7fd352ccf618235ef659ba009cae2474f6ae",
         intel:        "8d2040136d97964047e0aa24fe62b152b60c8e14ce86d199f92a03b31fe1b369",
         arm64_linux:  "6c486cf71e65fecbc24ce3029c7f8a23b1bce53c7e8c8c86434549064ad68dfa",
         x86_64_linux: "35392a8242e5cd489e4fe16fdacc3ce9684acc0a07e6381157813d16afe88759"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
