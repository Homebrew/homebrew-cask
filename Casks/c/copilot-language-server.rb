cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.521.0"
  sha256 arm:          "975e9d683334b7e63707ebb66b4423441c81b529923e9003d96e2e3973dd04b8",
         intel:        "4407a97cea318fe0ef8104a548142718f9319f398d1711aa83e99e5c9c2cb670",
         arm64_linux:  "0962e3be99cf4f226142bc1f457e399922190eb341e766a3e9d245ed3d64dde2",
         x86_64_linux: "3728ea79ad2276141beeced84158bee40a8f19a88d75d4b860ecca91899220db"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
