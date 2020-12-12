cask "imitone" do
  version "0.10.1"
  sha256 "1c6214d9d650e6f86d1fb2bc138ad27def1b6b1011fc934600a64b81b176b80f"

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast "https://imitone.com/beta/"
  name "imitone"
  desc "Convert voice to midi in real time"
  homepage "https://imitone.com/"

  app "imitone.app"
end
