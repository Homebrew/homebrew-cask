cask "font-codicon" do
  version "0.0.41"
  sha256 "8fc0843471360a465ca7fe857ab43ccc3dfe3863ce02d75bdad476ae0df07d7e"

  url "https://registry.npmjs.org/@vscode/codicons/-/codicons-#{version}.tgz",
      verified: "registry.npmjs.org/@vscode/codicons/"
  name "Codicon"
  homepage "https://github.com/microsoft/vscode-codicons"

  font "package/dist/codicon.ttf"

  # No zap stanza required
end
