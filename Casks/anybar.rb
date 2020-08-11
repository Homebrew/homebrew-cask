cask "anybar" do
  version "0.2.1"
  sha256 "7e1f65d9fd7a8cbf7370c78c1e1f45568f2999f02f76337aa31dfd847b6cfc79"

  url "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  appcast "https://github.com/tonsky/AnyBar/releases.atom"
  name "AnyBar"
  desc "Menu bar status indicator"
  homepage "https://github.com/tonsky/AnyBar"

  app "AnyBar.app"
end
