cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.568.0"
  sha256 arm:          "259743c63d5fbd408dc3167be458b9b464ef4782d7a82163a502f92f7d58a09e",
         intel:        "a0d6ca9437196715774c253b59f9c3c44e34fc9a0bfbb6f15acfa62fdf93a331",
         arm64_linux:  "e99941411290eedeac1b53a565c1c170a40053b76d777f0cd214eb3e481aa58e",
         x86_64_linux: "2069986db3593d8edfb6757d7848c1eed4888f06bd181185efa1f090bb8d2fe5"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
