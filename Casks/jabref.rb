cask "jabref" do
  version "5.2"
  sha256 "960add6b3adf64452d7fae1cd7e8a4728bfa40be9321515872f05963cc45c6a1"

  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg",
      verified: "github.com/JabRef/jabref/"
  appcast "https://github.com/JabRef/jabref/releases.atom"
  name "JabRef"
  homepage "https://www.jabref.org/"

  app "JabRef.app"
end
