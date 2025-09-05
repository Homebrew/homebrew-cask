cask "font-codicon" do
  version "0.0.40"
  sha256 "08b9e3185bf018e5c40698de2f8c1dccbe62abbb61baa31e7bc2e2e6732539c9"

  url "https://registry.npmjs.org/@vscode/codicons/-/codicons-#{version}.tgz",
      verified: "registry.npmjs.org/@vscode/codicons/"
  name "Codicon"
  homepage "https://github.com/microsoft/vscode-codicons"

  font "package/dist/codicon.ttf"

  # No zap stanza required
end
