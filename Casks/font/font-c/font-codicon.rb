cask "font-codicon" do
  version "0.0.43"
  sha256 "7a5a6c8795b60f9a59aa66a229398069b2a0e91c2a3da636024691e808f8d631"

  url "https://registry.npmjs.org/@vscode/codicons/-/codicons-#{version}.tgz",
      verified: "registry.npmjs.org/@vscode/codicons/"
  name "Codicon"
  homepage "https://github.com/microsoft/vscode-codicons"

  font "package/dist/codicon.ttf"

  # No zap stanza required
end
