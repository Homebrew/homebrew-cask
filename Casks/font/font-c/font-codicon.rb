cask "font-codicon" do
  version "0.0.42"
  sha256 "4024edec0cf71cf9f9fff7d34393ed8ccff48b4159f72c567a1173d843e0f97d"

  url "https://registry.npmjs.org/@vscode/codicons/-/codicons-#{version}.tgz",
      verified: "registry.npmjs.org/@vscode/codicons/"
  name "Codicon"
  homepage "https://github.com/microsoft/vscode-codicons"

  font "package/dist/codicon.ttf"

  # No zap stanza required
end
