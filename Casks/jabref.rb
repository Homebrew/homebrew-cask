cask "jabref" do
  version "5.7"
  sha256 "7b4b44bb99744915a01ed019d6587e7d1d32997e2d63f276c64de7fb1b4f5494"

  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg",
      verified: "github.com/JabRef/jabref/"
  name "JabRef"
  desc "Reference manager to edit, manage and search BibTeX files"
  homepage "https://www.jabref.org/"

  app "JabRef.app"
end
