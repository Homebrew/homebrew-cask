cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.520.0"
  sha256 arm:          "060bb09e2eba986de1f3d9a1447b3ebe139a08b738651b0361c04de24091ec21",
         intel:        "fe98a124a111c28d583a99c4c0120b730b99b19199fba6baeac0b7f56337ac93",
         arm64_linux:  "b7684c902deb7b7d3b7a4434a2b4b24aa8cc0c306a1e27216769068be480a717",
         x86_64_linux: "c838b311a49aa4fdcacf1c74c900b568faaff32fabfdcced0ae9c5adea552876"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
