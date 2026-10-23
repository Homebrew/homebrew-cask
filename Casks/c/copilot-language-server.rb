cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.560.0"
  sha256 arm:          "6dc699b21165ae6edc8721254dee20bf23462f7fb225035204b11bb983d3c9ae",
         intel:        "c995e4fc715dc14ab57a821c0390eacc64580aa916ecd1d41e060da73bebdd05",
         arm64_linux:  "dc11c84ee91f25c86fc83ab05facc7edf43d1c6125ad2df83204e8f9da3ca260",
         x86_64_linux: "a307faf7c3ce7774ad1a8b4c73d1649ab8e0e83837acc57338a932368b3731d9"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
