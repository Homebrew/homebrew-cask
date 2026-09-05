cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.541.0"
  sha256 arm:          "972ff802cf481909a8dd0865f4a8504e75e5dbb6b6fb2a7f2b1fbc8651d912c9",
         intel:        "f1e42626652c96022c494ca98290971e12fc9a8a82c3bbb18f923bf077d71491",
         arm64_linux:  "77e5cd73d044270ff055dc55a515a24b40d43ad45a215ad51591854f4cee2cd7",
         x86_64_linux: "22a211f163d6c13c016b832c8a4a2908743eada3695ac68ae5b467c8ab66c3c8"

  on_macos do
    depends_on macos: :big_sur
  end

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
