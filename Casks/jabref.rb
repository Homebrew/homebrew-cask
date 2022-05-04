cask "jabref" do
  version "5.6"
  sha256 "71d968ef7c60fb9f01e9d74be9a5ac15f7d7f7a3e80530d05c5bf16c8ba30b2a"

  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg",
      verified: "github.com/JabRef/jabref/"
  name "JabRef"
  desc "Reference manager to edit, manage and search BibTeX files"
  homepage "https://www.jabref.org/"

  app "JabRef.app"
end
