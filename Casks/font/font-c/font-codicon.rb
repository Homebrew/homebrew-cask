cask "font-codicon" do
  version "0.0.45"
  sha256 "dd7c6b20535753027c399dcaea4d12a0e6aaf73de10a3a8f4abfc51d13a88362"

  url "https://registry.npmjs.org/@vscode/codicons/-/codicons-#{version}.tgz",
      verified: "registry.npmjs.org/@vscode/codicons/"
  name "Codicon"
  homepage "https://github.com/microsoft/vscode-codicons"

  font "package/dist/codicon.ttf"

  # No zap stanza required
end
