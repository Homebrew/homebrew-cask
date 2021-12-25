cask "jabref" do
  version "5.4"
  sha256 "0385dcd257178a44681663b7d0676002694964c3f3e424a104417e0bcf3adc14"

  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg",
      verified: "github.com/JabRef/jabref/"
  name "JabRef"
  desc "Reference manager to edit, manage and search BibTeX files"
  homepage "https://www.jabref.org/"

  app "JabRef.app"
end
