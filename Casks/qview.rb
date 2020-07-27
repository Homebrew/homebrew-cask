cask "qview" do
  version "3.0"
  sha256 "a4373742bd0813e7ea335872a6e2d203d06aeed32a828b8ad6ada0882bdd34a9"

  url "https://github.com/jurplel/qView/releases/download/#{version}/qView-#{version}.dmg"
  appcast "https://github.com/jurplel/qView/releases.atom"
  name "qView"
  homepage "https://github.com/jurplel/qView"

  app "qView.app"
end
