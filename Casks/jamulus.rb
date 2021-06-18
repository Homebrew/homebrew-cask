cask "jamulus" do
  version "3.8.0"
  sha256 "31de220ae9470ea6d84e74783d2f01f8c6d52580d0c542b8d17dfa2239ba3dda"

  url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac.dmg",
      verified: "downloads.sourceforge.net/llcon/"
  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  depends_on macos: ">= :el_capitan"

  app "Jamulus.app"
  app "JamulusServer.app"
end
