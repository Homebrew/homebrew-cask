cask "anybar" do
  version "0.2.0"
  sha256 "c6391be7819695b7913b33845c53fc01a8923c067af07650ffb68c252197994c"

  url "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  appcast "https://github.com/tonsky/AnyBar/releases.atom"
  name "AnyBar"
  homepage "https://github.com/tonsky/AnyBar"

  app "AnyBar.app"
end
