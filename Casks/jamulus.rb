cask "jamulus" do
  version "3.7.0"
  sha256 "bdb6cf58b041fc5917937721f6de4a15108c647c9b4440881415b7392c0b5b2d"

  url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac.dmg",
      verified: "downloads.sourceforge.net/llcon/"
  appcast "https://sourceforge.net/projects/llcon/rss"
  name "Jamulus"
  homepage "https://jamulus.io/"

  depends_on macos: ">= :el_capitan"

  app "Jamulus.app"
  app "JamulusServer.app"
end
