cask "font-codicon" do
  version "0.0.44"
  sha256 "427aa8128ff9ff09935dd3c9b027ba5666a9186b16a0afa9474cc0e88e72dd7d"

  url "https://registry.npmjs.org/@vscode/codicons/-/codicons-#{version}.tgz",
      verified: "registry.npmjs.org/@vscode/codicons/"
  name "Codicon"
  homepage "https://github.com/microsoft/vscode-codicons"

  font "package/dist/codicon.ttf"

  # No zap stanza required
end
