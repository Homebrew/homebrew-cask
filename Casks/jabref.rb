cask "jabref" do
  version "5.3"
  sha256 "f6a93cef6453176da25b7ecf81fed805339330113b56cef523de1827f7625d5"

  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef-#{version}.dmg",
      verified: "github.com/JabRef/jabref/"
  name "JabRef"
  homepage "https://www.jabref.org/"

  app "JabRef.app"
end
