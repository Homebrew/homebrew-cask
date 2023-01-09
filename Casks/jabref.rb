cask "jabref" do
  version "5.9"
  sha256 "53db743600453ecca840547ddd43323c16d34bdd7ce69ce50b8f58bd1c27f3ad"

  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg",
      verified: "github.com/JabRef/jabref/"
  name "JabRef"
  desc "Reference manager to edit, manage and search BibTeX files"
  homepage "https://www.jabref.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "JabRef.app"
end
