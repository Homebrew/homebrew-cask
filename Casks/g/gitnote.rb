cask "gitnote" do
  version "3.1.0"
  sha256 "f1ff765c09d9e424c2995e7d887040c503cd9b5472eb5e2fc3dadc20d326a498"

  url "https://github.com/zhaopengme/gitnote/releases/download/#{version}/GitNote_setup_#{version}.dmg",
      verified: "github.com/zhaopengme/gitnote/"
  name "gitnote"
  homepage "https://gitnoteapp.com/"

  deprecate! date: "2024-07-11", because: :unmaintained

  app "GitNote.app"

  caveats do
    requires_rosetta
  end
end
