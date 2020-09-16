cask "jabref" do
  version "5.1"
  sha256 "834b7b2efa4abc9a627a557de6eae4c627bb6860e545ff89e5307c36a3684f59"

  # github.com/JabRef/jabref/ was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg"
  appcast "https://github.com/JabRef/jabref/releases.atom"
  name "JabRef"
  homepage "https://www.jabref.org/"

  app "JabRef.app"
end
