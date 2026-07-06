cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.518.0"
  sha256 arm:          "8630616934b623a280cf7083e77d6f24d476f1c00cb177b36eec730f79e5d754",
         intel:        "74e508c7705dbebfab173991bf88190816f28c332b89fe4f81376696d1b63f28",
         arm64_linux:  "7b3024f57a9ce20e907dcc54a98ef17633fb849c11118f00faac8dc4dded6a20",
         x86_64_linux: "da2b39653f2b158e8627098077e1fee5d464b9530466e2736be99423fb060964"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
