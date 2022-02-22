cask "mu-editor" do
  version "1.1.1"
  sha256 "3cb81559e97ee8813d126810fb11f981b32981d22e1767204f43b1a33f6e9f11"

  url "https://github.com/mu-editor/mu/releases/download/v#{version}/MuEditor-osx-#{version}.dmg",
      verified: "github.com/mu-editor/mu/"
  name "Mu"
  desc "Small, simple editor for beginner Python programmers"
  homepage "https://codewith.mu/"

  app "mu-editor.app"
end
