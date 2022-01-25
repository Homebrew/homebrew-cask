cask "jabref" do
  version "5.5"
  sha256 "51194c96dc3f4e0fcc9eb74a5514b73e0750a256a567c50b688e769e22f1fbe0"

  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg",
      verified: "github.com/JabRef/jabref/"
  name "JabRef"
  desc "Reference manager to edit, manage and search BibTeX files"
  homepage "https://www.jabref.org/"

  app "JabRef.app"
end
