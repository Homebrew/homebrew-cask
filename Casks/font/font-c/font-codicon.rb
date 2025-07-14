cask "font-codicon" do
  version "0.0.37-1"
  sha256 "24bb11a8641928b76c15246623a11ec74840e8a727de8c64b51fdca8ed4cdc4d"

  url "https://github.com/microsoft/vscode-codicons/releases/download/v#{version}/codicon-font-v#{version}.ttf"
  name "Codicon"
  homepage "https://github.com/microsoft/vscode-codicons"

  no_autobump! because: :requires_manual_review

  font "codicon-font-v#{version}.ttf"

  # No zap stanza required
end
