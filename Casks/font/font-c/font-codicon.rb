cask "font-codicon" do
  version "0.0.46-24"
  sha256 "d77bf2ed152e82c4b81288c5271a3481c61559d1a5416593756e3b0fe8a02bf1"

  url "https://registry.npmjs.org/@vscode/codicons/-/codicons-#{version}.tgz"
  name "Codicon"
  homepage "https://github.com/microsoft/vscode-codicons"

  font "package/dist/codicon.ttf"

  # No zap stanza required
end
