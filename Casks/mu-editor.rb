cask "mu-editor" do
  version "1.0.3"
  sha256 "b1815923ab38d00a5ec512912e50694e29c17f087989cd21aa52c88ce10452b0"

  # github.com/mu-editor/mu/ was verified as official when first introduced to the cask
  url "https://github.com/mu-editor/mu/releases/download/#{version}/mu-editor.dmg"
  appcast "https://github.com/mu-editor/mu/releases.atom"
  name "Mu"
  desc "Small, simple editor for beginner Python programmers"
  homepage "https://codewith.mu/"

  app "mu-editor.app"
end
