cask "jabref" do
  version "5.8"
  sha256 "c740d700a5db6c937dbb75629c2a98124fd0809ea6351fd4c7ffb9446ab61cf5"

  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg",
      verified: "github.com/JabRef/jabref/"
  name "JabRef"
  desc "Reference manager to edit, manage and search BibTeX files"
  homepage "https://www.jabref.org/"

  app "JabRef.app"
end
