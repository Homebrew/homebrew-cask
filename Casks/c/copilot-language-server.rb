cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.574.3"
  sha256 arm:          "b03e35596115e5666b245ef6e7c5267dd04289417df50f46088d9110dce63030",
         intel:        "d6ebd7665bbad8188ac19fbbb698c4caddb8d55d43b66c963862103e234cc31e",
         arm64_linux:  "a5a34dee22f226f117aaa1701c8eeb86b87484e988ab150fcbf201a5cc3adcd6",
         x86_64_linux: "b11c26d8ab772719aad70fdd85b828be40228cb88cca5a4adc4354dacfce8b76"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
