cask "jamulus" do
  version "3.9.1"
  sha256 "724f15fd564737fe06c717aa678a8c3817a006f7105bb13b71d5b650ed8c7cc5"

  url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac.dmg",
      verified: "downloads.sourceforge.net/llcon/"

  on_mojave :or_older do
    sha256 "6c645ba373205f774a09df59565e39808868b7ef3fb296a56f616ef90e74aefe"

    url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac_legacy.dmg",
        verified: "downloads.sourceforge.net/llcon/"
  end

  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  depends_on macos: ">= :catalina"

  app "Jamulus.app"
  app "JamulusServer.app"
end
