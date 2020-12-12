cask "jamulus" do
  version "3.6.2"
  sha256 "128727f09265bac829d33e0a6316722b3dc635585c53970875c343966e5f93b3"

  url "https://downloads.sourceforge.net/llcon/Jamulus-#{version}-installer-mac.dmg",
      verified: "downloads.sourceforge.net/llcon/"
  appcast "https://sourceforge.net/projects/llcon/rss"
  name "Jamulus"
  homepage "https://jamulus.io/"

  depends_on macos: ">= :el_capitan"

  app "Jamulus.app"
  app "JamulusServer.app"
end
