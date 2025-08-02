cask "font-codicon" do
  version "0.0.39"
  sha256 "27c3a63377c63504ae70eb1a70ecfc7f7503a3ed6a2f1b396950f3b97049ff04"

  url "https://registry.npmjs.org/@vscode/codicons/-/codicons-#{version}.tgz",
      verified: "registry.npmjs.org/@vscode/codicons/"
  name "Codicon"
  homepage "https://github.com/microsoft/vscode-codicons"

  font "package/dist/codicon.ttf"

  # No zap stanza required
end
