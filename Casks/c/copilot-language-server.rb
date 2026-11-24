cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.574.1"
  sha256 arm:          "11c5e96dd3225bf2724090949a2b4f54c1be33b3f36b82f1b32620f29b25fe16",
         intel:        "3f1a472ba73951a8c6570f482c387d2ddadb42883413623e1a73e0ff61853904",
         arm64_linux:  "b634bf2fed527da436d52417b2df58405fbb54fa9f08acd089cda43ed8456f51",
         x86_64_linux: "d83f65fb7f038389871581602b25a36066647960fe66d8dcc9a8603e93774453"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
