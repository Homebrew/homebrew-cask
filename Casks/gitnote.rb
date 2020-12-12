cask "gitnote" do
  version "3.1.0"
  sha256 "f1ff765c09d9e424c2995e7d887040c503cd9b5472eb5e2fc3dadc20d326a498"

  # github.com/zhaopengme/gitnote/ was verified as official when first introduced to the cask
  url "https://github.com/zhaopengme/gitnote/releases/download/#{version}/GitNote_setup_#{version}.dmg"
  appcast "https://github.com/zhaopengme/gitnote/releases.atom"
  name "gitnote"
  homepage "https://gitnoteapp.com/"

  app "GitNote.app"
end
