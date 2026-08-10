cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.528.0"
  sha256 arm:          "29134a17b74210f3c32fd4a49ae8583fd44f71fac759894074ec50dd69d91b01",
         intel:        "54bf751158879206510b51a3c87d2a8ded2cd3363bc99cdf4140f584172749fb",
         arm64_linux:  "c9d2369a1bd9576cc330506a295373eb4f445dba5f6f0f964f9bb3f09768ae19",
         x86_64_linux: "b601b1d3970e5273ac0636421dce1b1687ae6630dbefdf37f943967270b9abfe"

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
