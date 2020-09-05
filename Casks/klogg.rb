cask "klogg" do
  version "20.4"
  sha256 "3661f7525b2a20655b86074eebad83663513680811e9d2224741781b07a192fc"

  url "https://github.com/variar/klogg/releases/download/v#{version}/klogg-#{version}.0-r589-OSX.dmg"
  appcast "https://github.com/variar/klogg/releases.atom"
  name "Klogg"
  desc "Fast, advanced log explorer"
  homepage "https://github.com/variar/klogg"

  app "klogg.app"
end
